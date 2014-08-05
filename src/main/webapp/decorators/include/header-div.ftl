<div id="header">
	<#if userMessageKey??>
		<div id="header_message">
			${rc.getMessage(userMessageKey)}
		</div>
	</#if>
	<div id="header_content">
		<div id="nav_top">
			<#list page.otherLanguage?keys as currLang>
				<a href="${page.otherLanguage[currLang]}">${rc.getMessage("cwt.header.language."+currLang)}</a><#if currLang_has_next> | </#if>
			</#list>
		</div>
		<div id="nav_title" class="png"><a href="${rc.getMessage("cwt.header.title.url")}">${rc.getMessage("cwt.header.title")}</a></div>
		<div id="nav_portal"><span class="selected">${rc.getMessage("cwt.header.data")}</span> | <a href="${rc.getMessage("cwt.header.community.url")}">${rc.getMessage("cwt.header.community")}</a></div>
	</div>
	<div id="menu">
		<#assign currentApp = rc.getContextPath()?replace("/", "")/>
		<ul>
			<li class="menu_first">&nbsp;</li>
			<li<#if currentApp = "explorer"> class="page_item current_page_item"</#if>><a href="${rc.getMessage("cwt.header.menu.occportal.url")}">${rc.getMessage("cwt.header.menu.occportal")}</a></li>	
			<li<#if currentApp = "ipt"> class="page_item current_page_item"</#if>><a href="${rc.getMessage("cwt.header.menu.ipt.url")}">${rc.getMessage("cwt.header.menu.ipt")}</a></li>
			<li<#if currentApp = "tools" || currentApp ="narwhal-api"> class="page_item current_page_item"</#if>><a href="${rc.getMessage("cwt.header.menu.tools.url")}">${rc.getMessage("cwt.header.menu.tools")}</a></li>
			<li class="menu_last">&nbsp;</li>
		</ul>  
	</div>
</div>
