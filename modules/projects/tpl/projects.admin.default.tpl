<!-- BEGIN: MAIN -->

<div class="quick-actions">
	<!-- BEGIN: TYPES -->
	<a href="{TYPE_ALL_URL}" class="quick-action {TYPE_ALL_ACT}">
		<span>
			<img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/folder.png"/></span>{PHP.L.All}
	</a>
	<!-- BEGIN: TYPES_ROWS -->
	<a href="{TYPE_ROW_URL}" class="quick-action {TYPE_ALL_ACT}">
		<span>
			<img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/folder.png"/></span>{TYPE_ROW_TITLE}
	</a>
	<!-- END: TYPES_ROWS -->
	<!-- END: TYPES -->
	<a href="{TYPES_EDIT}" class="quick-action">
		<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/flash.png"/></span>{PHP.L.projects_types_edit}
	</a>		
	<div class="clear height0"></div>
</div>



<div class="block" id="schform">
	<h3>Поиск</h3>
	<form action="{SEARCH_ACTION_URL}" method="get">
		<input type="hidden" name="m" value="{PHP.m}" />
		<input type="hidden" name="p" value="{PHP.p}" />
		<input type="hidden" name="c" value="{PHP.c}" />
		<input type="hidden" name="type" value="{PHP.type}" />
		{PHP.L.Search}:{SEARCH_SQ}{PHP.L.Location}:{SEARCH_LOCATION}
		<div>
			{SEARCH_STATE}
		</div>
		<div class="action_bar valid">
			<input type="submit" class="submit" value="{PHP.L.Search}" />
		</div>
	</form>
</div>

<div class="block" id="listprojects">
	<h3>{PHP.L.Search}</h3>	
	<table class="cells">
		<tr class="prjitem">
			<td class="coltop">{PHP.L.projects_price}</td>
			<td class="coltop">{PHP.L.Title}</td>
			<td class="coltop">{PHP.L.Date}</td>
			<td class="coltop">{PHP.L.Owner}</td>
			<td class="coltop">{PHP.L.Text}</td>
			<td class="coltop">{PHP.L.Type}</td>
			<td class="coltop">{PHP.L.Category}</td>
			<td class="coltop">{PHP.L.Actions}</td>
		</tr>
		<!-- BEGIN: PRJ_ROWS -->
		<tr class="prjitem">
			<td><!-- IF {PRJ_ROW_COST} > 0 --><div class="cost">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</div><!-- ENDIF --></td>
			<td><a href="{PRJ_ROW_URL}" target="_blank">{PRJ_ROW_SHORTTITLE}</a></td>
			<td>{PRJ_ROW_DATE}</td>
			<td>{PRJ_ROW_OWNER_NAME}</td>
			<td>{PRJ_ROW_SHORTTEXT}</td>
			<td>{PRJ_ROW_TYPE}</td>
			<td>{PRJ_ROW_CATTITLE}</td>
			<td>
				<a href="{PRJ_ROW_EDIT_URL}" class="button" target="blank">{PHP.L.Edit}</a>
				<!-- IF {PRJ_ROW_STATE} == 2 -->
				<a href="{PRJ_ROW_VALIDATE_URL}" class="button">{PHP.L.Validate}</a>
				<!-- ENDIF -->
				<a href="{PRJ_ROW_DELETE_URL}" class="button">{PHP.L.Delete}</a>
			</td>
		</tr>
		<!-- END: PRJ_ROWS -->
	</table>
	<div class="action_bar valid">
		<p class="paging">{PAGENAV_PAGES} </p>
		<p>&nbsp </p>
	</div>	
</div>


<!-- END: MAIN -->