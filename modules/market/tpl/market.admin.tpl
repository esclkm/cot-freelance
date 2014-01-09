<!-- BEGIN: MAIN -->

<div class="block" id="schform">
	<h3>{PHP.L.Search}</h3>
	<form action="{SEARCH_ACTION_URL}" method="get">
		<div>
			<input type="hidden" name="m" value="{PHP.m}" />
			<input type="hidden" name="p" value="{PHP.p}" />
			<input type="hidden" name="c" value="{PHP.c}" />
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
	<h3>{PHP.L.market}</h3>
	<table id="listmarket" class="cells">
		<!-- BEGIN: PRD_ROWS -->
		<tr>
			<td class="thumb">	
				<!-- IF {PRD_ROW_MAVATAR.1} -->
				<a href="{PRD_ROW_URL}"><img src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 200, 200, crop)}" /></a>
				<!-- ENDIF -->
			</td>
			<td class="title"><a href="{PRD_ROW_URL}" target="blank">{PRD_ROW_SHORTTITLE}</a></td>
			<td class="cost"><!-- IF {PRD_ROW_COST} > 0 -->{PRD_ROW_COST} {PHP.cfg.payments.valuta}<!-- ENDIF --></td>
			<td>
				<a href="{PRD_ROW_EDIT_URL}" class="button" target="blank">{PHP.L.Edit}</a>
				<!-- IF {PRD_ROW_STATE} == 2 -->
				<a href="{PRD_ROW_VALIDATE_URL}" class="button">{PHP.L.Validate}</a>
				<!-- ENDIF -->
				<a href="{PRD_ROW_DELETE_URL}" class="button">{PHP.L.Delete}</a>
			</td>
		</tr>
		<!-- END: PRD_ROWS -->
	</table>	
	<div class="action_bar valid">
		<p class="paging">{PAGENAV_PAGES} </p>
		<p>&nbsp </p>
	</div>
</div>

<!-- END: MAIN -->