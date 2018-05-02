<?php

namespace SilverStripe\Lessons;

use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use Page;

class ArticlePage extends Page
{
    private static $db = [];

    private static $has_one = [
        'Header' => Image::class
    ];

    private static $owns = [
        'Header',
        'ArticleParagraph'
    ];

    private static $has_many = [
        'ArticleParagraph' => ArticleParagraph::class,
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Attachments', $images = UploadField::create('Header')
            ->setDescription('This is header image for each page.')
        );
        $fields->addFieldToTab('Root.Paragraph', GridField::create(
            'ArticleParagraph',
            'Tiered Paragraphs for different levels of knowledge',
            $this->ArticleParagraph(),
            GridFieldConfig_RecordEditor::create()
        ));

        $images->setFolderName('header-images');

        return $fields;
    }
}
