<?php

namespace Pages;

use SilverStripe\CMS\Model\SiteTree;
use Page;

class HomePage extends Page 

{
    function firstNextPage(){
        $articlepages = SiteTree::get()->filter([
            'ParentID' => $this->ID
            ])->sort('Sort', 'ASC');
        return $articlepages[0];
        }
}
