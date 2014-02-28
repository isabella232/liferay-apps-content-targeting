<#--
/**
 * Copyright (c) 2000-2012 Liferay, Inc. All rights reserved.
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
-->

<#include "../init.ftl" />

<@portlet["renderURL"] var="searchURL">
	<@portlet["param"] name="mvcPath" value="${contentTargetingPath.VIEW}" />
	<@portlet["param"] name="tabs1" value="campaigns" />
</@>

<@aui["form"] action="${searchURL}" method="post" name="fm">
	<@aui["input"] name="redirect" type="hidden" value="${currentURL}" />

	<@aui["nav-bar"]>
		<#include "campaign_toolbar.ftl" />

		<@aui["nav-bar-search"] cssClass="pull-right">
			<div class="form-search">
				<@liferay_ui["input-search"] id="keywords1" name="keywords" placeholder='${languageUtil.get(themeDisplay.getLocale(), "keywords")}' />
			</div>
		</@>
	</@>

	<div id="<@portlet["namespace"] />campaignsPanel">
		<#include "view_campaigns_resources.ftl" />
	</div>
</@>