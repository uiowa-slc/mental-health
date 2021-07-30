<?php

namespace {
    use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\TreeDropdownField;

    class HomePage extends Page
    {
        private static $db = [

        ];

        private static $has_one = array(
            'FeaturedPageOne' => SiteTree::class,
            'FeaturedPageTwo' => SiteTree::class,
            'FeaturedPageThree' => SiteTree::class,
            'FeaturedPageFour' => SiteTree::class,
            'FeaturedPageFive' => SiteTree::class,
        );

        private static $icon_class = 'font-icon-p-home';

        public function getCMSFields()
        {
            $fields = parent::getCMSFields();

            $fields->addFieldToTab('Root.Main', TreeDropdownField::create('FeaturedPageOneID', 'Link to this page', SiteTree::class), 'Content');
            
            $fields->addFieldToTab('Root.Main', TreeDropdownField::create('FeaturedPageTwoID', 'Link to this page', SiteTree::class), 'Content');
            $fields->addFieldToTab('Root.Main', TreeDropdownField::create('FeaturedPageThreeID', 'Link to this page', SiteTree::class), 'Content');
            $fields->addFieldToTab('Root.Main', TreeDropdownField::create('FeaturedPageFourID', 'Link to this page', SiteTree::class), 'Content');
            $fields->addFieldToTab('Root.Main', TreeDropdownField::create('FeaturedPageFiveID', 'Link to this page', SiteTree::class), 'Content');
            
            return $fields;
        }
    }
}
