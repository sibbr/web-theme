<!-- HEADER JS-->
<script type="text/javascript" charset="utf-8" src="http://buriti.lncc.br/wordpress/wp-content/themes/portal/js/header.js?v1.0"></script>

<div class="bgnav">
<div class="navbar2">
   <div id="menu">
      <#assign currentApp = rc.getContextPath()?replace("/", "")/>
      <ul>
         <li<#if currentApp = "explorer"> class="page_item current_page_item"</#if>><a href="${rc.getContextPath()}/${rc.getMessage("cwt.header.link.occurrences")}">${rc.getMessage("cwt.header.menu.occportal")}</a></li>
         <li<#if currentApp = "datasets"> class="page_item current_page_item"</#if>><a href="${rc.getContextPath()}/${rc.getMessage("cwt.header.link.datasets")}">${rc.getMessage("cwt.header.menu.datasets")}</a></li>
         <li<#if currentApp = "ipt"> class="page_item current_page_item"</#if>><a href="${rc.getMessage("cwt.header.menu.ipt.url")}">${rc.getMessage("cwt.header.menu.ipt")}</a></li>
         <li<#if currentApp = "tools" || currentApp ="narwhal-api"> class="page_item current_page_item"</#if>><a href="${rc.getMessage("cwt.header.menu.tools.url")}">${rc.getMessage("cwt.header.menu.tools")}</a></li>
      </ul>
   </div>
   
   <div id="nav_top" style="color:#cccccc!important;">
      <#list page.otherLanguage?keys as currLang>
      <a href="${page.otherLanguage[currLang]}">${rc.getMessage("cwt.header.language."+currLang)}</a><#if currLang_has_next> | </#if>
      </#list>
   </div>  
</div>
</div>