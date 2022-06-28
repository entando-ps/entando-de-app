package com.agiletec.aps.system.common;/*
 * Copyright 2018-Present Entando Inc. (http://www.entando.com) All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

import org.entando.entando.ent.util.EntLogging.EntLogFactory;
import org.entando.entando.ent.util.EntLogging.EntLogger;

import javax.sql.DataSource;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class QueryLimitResolver {

    //TODO MOVE
    private static final String JDBC_DRIVER_DERBY_EMBEDDED = "org.apache.derby.jdbc.EmbeddedDriver";
    private static final String JDBC_DRIVER_POSTGRES = "org.postgresql.Driver";
    private static final String JDBC_DRIVER_MYSQL = "com.mysql.jdbc.Driver";
    private static final String JDBC_DRIVER_MYSQL_CJ = "com.mysql.cj.jdbc.Driver";
    private static final String JDBC_DRIVER_ORACLE = "oracle.jdbc.driver.OracleDriver";

    private static final EntLogger logger = EntLogFactory.getSanitizedLogger(QueryLimitResolver.class);

    @SuppressWarnings("rawtypes")
    public static String createLimitBlock(FieldSearchFilter filter, DataSource dataSource, String dataSourceClass) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return createLimitBlock(filter.getOffset(), filter.getLimit(), dataSource, dataSourceClass);
    }

    public static String createLimitBlock(Integer offset, Integer limit, DataSource dataSource, String dataSourceClassName) {
        String limitBlock = null;
        String driverClassName = extractDriverClassName(dataSource, dataSourceClassName);
        logger.trace("detected driver: {}", driverClassName);
        if (driverClassName.equalsIgnoreCase(JDBC_DRIVER_DERBY_EMBEDDED)) {
            limitBlock = String.format(" OFFSET %d ROWS FETCH NEXT %d ROWS ONLY ", offset, limit);
        } else if (driverClassName.equalsIgnoreCase(JDBC_DRIVER_POSTGRES)) {
            limitBlock = String.format(" OFFSET %d ROWS FETCH NEXT %d ROWS ONLY ", offset, limit);
        } else if(driverClassName.equalsIgnoreCase(JDBC_DRIVER_ORACLE)){
            // Must be handled on caller method
            // Argument %s must be filled with query
            limitBlock = String.format("SELECT * FROM ( %s ) WHERE ROWNUM > %d AND ROWNUM <= %d", "%s", offset, offset + limit);
        } else if (driverClassName.equalsIgnoreCase(JDBC_DRIVER_MYSQL) || driverClassName.equalsIgnoreCase(JDBC_DRIVER_MYSQL_CJ)) {
            limitBlock = String.format(" LIMIT %d OFFSET %d ", limit, offset);
        } else {
            logger.warn("driver {} not implemented", driverClassName);
            throw new UnsupportedOperationException(driverClassName + " not implemented!");
        }
        logger.trace("sql limit: {}", limitBlock);
        return limitBlock;
    }

    private static String extractDriverClassName(DataSource dataSource, String dataSourceClassName) {
        String driver = null;
        try {
            Method method = dataSource.getClass().getDeclaredMethod("getDriverClassName");
            driver = (String) method.invoke(dataSource);
        } catch (Exception e) {
            logger.debug("Extracting datasource class - errors {}: return static class name", e.getMessage());
            if (null == dataSourceClassName) {
                logger.warn("Null dataSourceClassName - Please configure it in dao bean");
            }
            return dataSourceClassName;
        }
        return driver;
    }

}