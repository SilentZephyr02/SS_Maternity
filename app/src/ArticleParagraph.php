<?php

namespace SilverStripe\Lessons;
  
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Versioned\Versioned;

class ArticleParagraph extends DataObject 
{
  private static $db = [
    'Simple' => 'Text',
    'Detailed' => 'Text',
    'Complex' => 'Text'
  ];

  private static $has_one = [
    'ArticlePage' => ArticlePage::class,
  ];

  private static $extensions = [
      Versioned::class,
  ]; 

  private static $versioned_gridfield_extensions = true;

  private static $summary_fields = [
    'Simple' => 'Sentence starter',
];

  public function getCMSFields() 
  {
    $fields = FieldList::create(
      TextareaField::create('Simple'),
      TextareaField::create('Detailed'),
      TextareaField::create('Complex')
    );

    return $fields;
  }
}
