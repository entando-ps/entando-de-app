<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<wp:ifauthorized permission="superuser">
    <li class="list-group-item">
        <a href="<s:url action="intro" namespace="/do/ecr" />">
            <span class="list-group-item-value"><s:text name="ecr.admin.menu" /></span>
        </a>
    </li>
</wp:ifauthorized>

