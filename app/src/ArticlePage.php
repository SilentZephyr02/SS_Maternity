<?php

namespace SilverStripe\Lessons;

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use Page;

class ArticlePage extends Page
{
    private static $db = [];

    private static $has_one = [
        'Header' => Image::class

    ];

    private static $owns = [
        'Header'
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Attachments', $images = UploadField::create('Header')
            ->setDescription('This is header image for each page.')
        );

        $images->setFolderName('header-images');

        return $fields;
    }
}
