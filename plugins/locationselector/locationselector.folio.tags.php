<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=folio.list.tags,folio.admin.list.tags
 * [END_COT_EXT]
 */
/**
 * Location Selector for Cotonti
 *
 * @package locationselector
 * @version 2.0.0
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL.');

// ==============================================
$t->assign(array(
	"SEARCH_LOCATION" => cot_select_location('slocation', $location['country'], $location['region'], $location['city']),
));

// ==============================================

