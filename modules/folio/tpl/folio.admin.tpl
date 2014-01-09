<!-- BEGIN: MAIN -->

<div class="block" id="schform">
	<h3>{PHP.L.Search}</h3>
	<form action="{SEARCH_ACTION_URL}" method="get">
		<div>
			<input type="hidden" name="m" value="{PHP.m}" />
			<input type="hidden" name="p" value="{PHP.p}" />
			<input type="hidden" name="c" value="{PHP.c}" />
			<input type="hidden" name="type" value="{PHP.type}" />
			{PHP.L.Search}: {SEARCH_SQ} {PHP.L.Location}:	{SEARCH_LOCATION}
		</div>
		<div>
			{SEARCH_STATE}
		</div>
		<div class="action_bar valid">
			<input type="submit" class="submit" value="{PHP.L.Search}" />
		</div>		
	</form>
</div>

<div class="block">
	<h3>{PHP.L.folio}</h3>
	<table id="listfolio" class="cells">
		<!-- BEGIN: PRD_ROWS -->
		<tr>
			<td class="thumb width100px">	
				<!-- IF {PRD_ROW_MAVATAR.1} -->
				<a href="{PRD_ROW_URL}"><img src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 100, 100, crop)}" /></a>
				<!-- ENDIF -->
			</td>
			<td class="title"><a href="{PRD_ROW_URL}" target="blank">{PRD_ROW_SHORTTITLE}</a></td>
			<td class="cost"><!-- IF {PRD_ROW_COST} > 0 -->{PRD_ROW_COST} {PHP.cfg.payments.valuta}<!-- ENDIF --></td>
		</tr>
		<!-- END: PRD_ROWS -->
	</table>	
	<div class="action_bar valid">
		<p class="paging">{PAGENAV_PAGES} </p>
		<p>&nbsp </p>
	</div>
</div>

<!-- END: MAIN -->