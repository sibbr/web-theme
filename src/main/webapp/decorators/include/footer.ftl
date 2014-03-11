<div id="footer">
	<div id="footer_content">
		<div class="footer_section left">
			<a id="cc0" class="cc_logo" href="${rc.getMessage("cwt.footer.cc0.url")}" title="${rc.getMessage("cwt.footer.cc0.title")}">&nbsp;</a>
			<p>${rc.getMessage("cwt.footer.cc0.description")}</p>
			<ul>
				<li><a href="${rc.getMessage("cwt.footer.norms.url")}">${rc.getMessage("cwt.footer.norms")}</a></li>
				<li><a href="${rc.getMessage("cwt.footer.ipt.url")}">${rc.getMessage("cwt.footer.ipt")}</a></li>
				<#if footerAdditionalInfoKey??>
					<#if footerAdditionalInfoParamKey??>
					<#attempt>
				<li>${rc.getMessage(footerAdditionalInfoKey,[footerAdditionalInfoParamKey?eval])}</li>
					<#recover>
					</#attempt>
					<#else>
				<li>${rc.getMessage(footerAdditionalInfoKey)}</li>
					</#if>
				</#if>
			</ul>
		</div>
		<div class="footer_section right">
			<a rel="license" id="cc_by" class="cc_logo" href="${rc.getMessage("cwt.footer.ccby.url")}" title="${rc.getMessage("cwt.footer.ccby.title")}">&nbsp;</a>
			<p>${rc.getMessage("cwt.footer.ccby.description")}</p>
			<ul>
				<li><a href="${rc.getMessage("cwt.footer.about.url")}">${rc.getMessage("cwt.footer.about")}</a></li>
				<li><a href="${rc.getMessage("cwt.footer.contact.url")}">${rc.getMessage("cwt.footer.contact")}</a></li>
			</ul>
		</div>
	</div>
</div>