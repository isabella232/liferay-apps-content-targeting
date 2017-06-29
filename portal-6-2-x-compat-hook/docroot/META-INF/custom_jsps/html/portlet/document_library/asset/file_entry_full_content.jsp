<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
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
--%>

<%@ include file="/html/portlet/document_library/init.jsp" %>

<%
boolean showExtraInfo = ParamUtil.getBoolean(request, "showExtraInfo", true);
%>

<c:choose>
	<c:when test="<%= PropsValues.DL_FILE_ENTRY_PREVIEW_ENABLED && !showExtraInfo %>">
		<liferay-util:include page="/html/portlet/document_library/view_file_entry_simple_view.jsp" />
	</c:when>
	<c:otherwise>
		<liferay-util:include page="/html/portlet/document_library/view_file_entry.jsp">
			<liferay-util:param name="showHistoryActions" value="<%= Boolean.FALSE.toString() %>" />
		</liferay-util:include>
	</c:otherwise>
</c:choose>