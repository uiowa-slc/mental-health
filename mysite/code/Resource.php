<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\AssetAdmin\Forms\UploadField;

class Resource extends DataObject
{
    private static $db = [
        'Title' => 'Varchar',
        'SortOrder' => 'Int',
        'Content' => 'HTMLText',
        'Services' => 'HTMLText',
        'PopulationServed' => 'Text',
        'PhoneNumber' => 'Text',
        'EmailAddress' => 'Text',
        'Website' => 'Text',
        'Twitter' => 'Text',
        'Facebook' => 'Text',
        'Instagram' => 'Text',
    ];
    private static $has_one = array(

        "Logo" => Image::class,

    );

    private static $owns = array(
        'Logo'
    );

    private static $default_sort = 'SortOrder';

        public function getCMSFields()
        {
            $fields = parent::getCMSFields();
            $fields->removeByName('SortOrder');

            $fields->addFieldToTab('Root.Main', new TextField('Title'));
            $fields->addFieldToTab('Root.Main', new UploadField('Logo', 'Upload Logo'));

            $fields->addFieldToTab('Root.Main', new TextField('PopulationServed', 'Population Served'));
            $fields->addFieldToTab('Root.Main', new TextField('PhoneNumber', 'Main Phone Number'));
            $fields->addFieldToTab('Root.Main', new TextField('EmailAddress', 'Email Address'));
            $fields->addFieldToTab('Root.Main', new TextField('Website', 'Website'));

            $fields->addFieldToTab('Root.Main', new TextField('Twitter', 'Twitter URL'));
            $fields->addFieldToTab('Root.Main', new TextField('Facebook', 'Facebook URL'));
            $fields->addFieldToTab('Root.Main', new TextField('Instagram', 'Instagram URL'));

            $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content'));
            $fields->addFieldToTab('Root.Main', new HTMLEditorField('Services'));

            return $fields;
        }
}
