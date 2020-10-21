<?php

use SilverStripe\Forms\HTMLEditor\HtmlEditorConfig;
use SilverStripe\i18n\i18n;

// Set the site locale
i18n::set_locale('en_US');
// FulltextSearchable::enable();

HtmlEditorConfig::get('cms')->addButtonsToLine(2, 'sup', 'separator');
HtmlEditorConfig::get('cms')->removeButtons('pasteword');
