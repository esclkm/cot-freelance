<!-- BEGIN: MAIN -->

<div class="block">
	<form action="{EDITFORM_ACTION_URL}" method="post" name="newcountry">
		<h3>{PHP.L.projects_types_editor}</h3>
		<table class="cells">
			<tr>
				<td class="coltop width60">{PHP.L.Default}</td>
				<td class="coltop width60">{PHP.L.Title}</td>
				<td class="coltop width50">{PHP.L.Action}</td>
			</tr>	
			<!-- BEGIN: ROWS -->
			<tr>
				<td>{TYPE_ROW_DEFAULT} </td>
				<td>{TYPE_ROW_TITLE} </td>
				<td>
					<a title="{PHP.L.Delete}" href="{TYPE_ROW_DEL_URL}" class="negative button"><span class="trash icon"></span>{PHP.L.Delete}</a>		
				</td>
			</tr>
			<!-- END: ROWS -->
			<!-- BEGIN: NOROWS -->
			<tr>
				<td class="centerall" colspan="2">{PHP.L.None}</td>
			</tr>
			<!-- END: NOROWS -->	
		</table>
		<div class="action_bar valid">
			<p class="paging">{PAGENAV_PAGES} </p>
			<input type="submit" class="submit" value="{PHP.L.Update}" />
		</div>	
	</form>
</div>
<!-- BEGIN: ADDFORM -->
<div class="block">
	<h3>{PHP.L.projects_types_new}</h3>
	<form method="post" action="{ADDFORM_ACTION_URL}">
		<table class="cells">
			<tr>
				<td>{PHP.L.Title}:</td>
				<td>{ADDFORM_TITLE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Default}:</td>
				<td>{ADDFORM_DEFAULT}</td>
			</tr>
		</table>
		<div class="action_bar valid">
			<input type="submit" class="submit" value="{PHP.L.Add}" />
		</div>	
	</form>
</div>
<!-- END: ADDFORM -->

<!-- END: MAIN -->