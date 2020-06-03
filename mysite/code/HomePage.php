<?php

namespace {
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;
use SilverStripe\Forms\GridField\GridField;

    class HomePage extends Page
    {
        private static $db = [

        ];

        private static $has_one = [];

        private static $icon_class = 'font-icon-p-home';

        public function getCMSFields()
        {
            $fields = parent::getCMSFields();


            $conf = GridFieldConfig_RecordEditor::create();
            $conf->addComponent(new GridFieldSortableRows('SortOrder'));
            $fields->addFieldToTab('Root.Resources', new GridField('Resources', 'Resources', Resource::get(), $conf));
            
            return $fields;
        }
    }
}
