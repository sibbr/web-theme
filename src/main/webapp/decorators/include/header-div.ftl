<!-- HEADER JS-->
<script type="text/javascript" charset="utf-8" src="http://200.130.15.175/menu/global_nav.js?v1.0"></script>
<div class="bgnav">
	<div class="navbar2">
	   <div id="menu">
	      <#assign currentApp = rc.getContextPath()?replace("/", "")/>
	      <ul>
	         <li<#if currentApp = "explorer"> class="page_item current_page_item"</#if>><a href="${rc.getContextPath()}/${rc.getMessage("cwt.header.link.occurrences")}">${rc.getMessage("cwt.header.menu.occportal")}</a></li>
	         <li<#if currentApp = "datasets"> class="page_item current_page_item"</#if>><a href="${rc.getContextPath()}/${rc.getMessage("cwt.header.link.datasets")}">${rc.getMessage("cwt.header.menu.datasets")}</a></li>
	         <li<#if currentApp = "publishers"> class="page_item current_page_item"</#if>><a href="${rc.getContextPath()}/${rc.getMessage("cwt.header.link.publishers")}">${rc.getMessage("cwt.header.menu.publishers")}</a></li>
	      </ul>
	   </div>
	
	   <div id="nav_top" style="color:#cccccc!important;">
	      <#list page.otherLanguage?keys as currLang>
	      <a href="${page.otherLanguage[currLang]}">${rc.getMessage("cwt.header.language."+currLang)}</a><#if currLang_has_next> | </#if>
	      </#list>
	   </div>
	</div>
</div>
