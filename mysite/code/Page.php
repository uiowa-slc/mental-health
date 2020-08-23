<?php

use SilverStripe\View\SSViewer;
use SilverStripe\View\ArrayData;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\Blog\Model\Blog;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\AssetAdmin\Forms\UploadField;

class Page extends SiteTree {

	private static $db = array(

	);

	private static $has_one = array(
		"Photo" => Image::class,
	);
	
    private static $owns = array(
        'Photo'
    );
    
    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', new UploadField('Photo', 'Upload Photo'), 'Content');

		return $fields;
	}

}
