/*
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
package org.entando.entando.web.user;

import com.agiletec.aps.system.services.user.UserDetails;
import com.agiletec.aps.system.services.user.UserGroupPermissions;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.entando.entando.aps.system.services.user.IUserService;
import org.entando.entando.aps.util.HttpSessionHelper;
import org.entando.entando.web.common.model.SimpleRestResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

@Validated
@RestController
@RequestMapping(value = "/users")
@SessionAttributes("user")
public class UserControllerExt {

    @Autowired
    private IUserService userService;

    @GetMapping("/users/myGroupPermissions")
    public ResponseEntity<SimpleRestResponse<List<UserGroupPermissions>>> getMyGroupPermissions(HttpServletRequest request) {
        UserDetails userDetails = HttpSessionHelper.extractCurrentUser(request);
        List<UserGroupPermissions> currentUserPermissions = this.userService.getMyGroupPermissions(userDetails);
        return new ResponseEntity<>(new SimpleRestResponse<>(currentUserPermissions), HttpStatus.OK);
    }

}
