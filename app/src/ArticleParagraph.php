<?php

namespace SilverStripe\Lessons;
  
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Versioned\Versioned;

class ArticleParagraph extends DataObject 
{
  private static $db = [
    'Simple' => 'HTMLText',
    'Detailed' => 'HTMLText',
    'Complex' => 'HTMLText'
  ];

  private static $has_one = [
    'ArticlePage' => ArticlePage::class,
  ];

  private static $extensions = [
      Versioned::class,
  ]; 

  private static $versioned_gridfield_extensions = true;

  private static $summary_fields = [
    'Simple.Summary' => 'Sentence starter',
];

  public function getCMSFields() 
  {
    $fields = FieldList::create(
      HTMLEditorField::create('Simple'),
      HTMLEditorField::create('Detailed'),
      HTMLEditorField::create('Complex')
    );

    return $fields;
  }
}
