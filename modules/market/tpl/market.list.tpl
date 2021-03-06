<!-- BEGIN: MAIN -->
<div class="breadcrumb">
	{BREADCRUMBS}
</div>
<!-- IF {PHP.usr.auth_write} -->
<div class="pull-right padding15">
	<a class="btn btn-success" href="{PHP|cot_url('market', 'm=add')}">{PHP.L.market_add_product}</a>
</div>	
<!-- ENDIF -->
<h1>
<!-- IF {PHP.c} -->
	{CATTITLE}
<!-- ELSE -->
	{PHP.L.market}
<!-- ENDIF -->
</h1>
<div class="row">
	<div class="span3">
		<!-- IF {CATALOG} --><div class="well well-small">{CATALOG}</div><!-- ENDIF -->
	</div>
	<div class="span9">

		<div class="well">	
			<form action="{SEARCH_ACTION_URL}" method="get">
				<input type="hidden" name="e" value="market" />
				<table width="100%" cellpadding="5" cellspacing="0">
					<tr>
						<td width="100">{PHP.L.Search}:</td>
						<td>{SEARCH_SQ}</td>
					</tr>
					<tr>
						<td width="100">{PHP.L.Location}:</td>
						<td>{SEARCH_LOCATION}</td>
					</tr>
					<tr>
						<td >{PHP.L.Category}:</td>
						<td>{SEARCH_CAT}</td>
					</tr>
					<tr>
						<td>{PHP.L.Order}:</td>
						<td>{SEARCH_SORTER}</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" name="search" class="btn" value="{PHP.L.Search}" /></td>
					</tr>
				</table>		
			</form>
		</div>

		<div id="listmarket">
			<!-- BEGIN: PRD_ROWS -->
			<div class="media">
				<!-- IF {PRD_ROW_MAVATAR.1} -->
				<div class="pull-left">
					<a href="{PRD_ROW_URL}"><div class="thumbnail"><img src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 100, 100, crop)}" /></div></a>
				</div>
				<!-- ENDIF -->
				<h4><!-- IF {PRD_ROW_COST} > 0 --><div class="cost pull-right">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</div><!-- ENDIF --><a href="{PRD_ROW_URL}">{PRD_ROW_SHORTTITLE}</a></h4>
				<p class="owner">{PRD_ROW_OWNER_NAME} <span class="date">[{PRD_ROW_DATE}]</span> &nbsp;{PRD_ROW_COUNTRY} {PRD_ROW_REGION} {PRD_ROW_CITY} &nbsp; {PRD_ROW_EDIT_URL}</p>
				<p class="text">{PRD_ROW_SHORTTEXT}</p>
				<p class="type"><a href="{PRD_ROW_CATURL}">{PRD_ROW_CATTITLE}</a></p>
			</div>
			<!-- END: PRD_ROWS -->
		</div>	
			
		<!-- IF {PAGENAV_COUNT} > 0 -->	
		<div class="pagination"><ul>{PAGENAV_PAGES}</ul></div>
		<!-- ELSE -->
		<div class="alert">{PHP.L.market_notfound}</div>
		<!-- ENDIF -->
	</div>
</div>

<!-- END: MAIN -->