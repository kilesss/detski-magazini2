<?php

namespace App\Http\Controllers\Mapping;

use App\Http\Controllers\Mapping\Interfaces\MappingInterface;
use App\Models\ClientCategories;
use App\Models\FailedLinks;
use App\Models\ProductImages;
use App\Models\Products;
use JetBrains\PhpStorm\NoReturn;

class toysiMapping implements MappingInterface
{


    public function parseData($links, $shopId): void
    {
        $parseController = new ParsingController($links, $shopId,  [
            'images' => '/<meta property="og:image"\n*\s*content="(\S*)"/ms',
            'title' => '/<meta property="og:title" content="(.*?)" \/>/ms',
            'price' => '/<span class="c-price-exclude-taxes__no-wholesale-price-list-price-digits price" style="display:none;" itemprop="price">(\S+)<\/span>\s*<span class="c-price-exclude-taxes__no-wholesale-price-currency currency"/m',
            'pricePromotion' => '//',
            'description' => '/div class="tab-content c-tab__detailed-description" id="product-detailed-description">\n*\t*<div class="s-html-editor">\n*\t*<p style="text-align: justify;">(.*?)<\/div>\n*<\/div>/ms',
            'categories_section' => '/<div class="c-breadcrumb c-breadcrumb__list">(.*?)<\/div>/ms',
            'categories' => '/c-breadcrumb__item-link">(.*?)<\/a>/ms',
            'brand' =>  '//m',
            'imagelink' => ""
        ], $this);
    }

    public function getTitle($hteml)
    {
        // TODO: Implement getTitle() method.
    }

    public function getPrice($html)
    {
        // TODO: Implement getPrice() method.
    }

    public function getPricePromotion($html)
    {
        // TODO: Implement getPricePromotion() method.
    }

    public function getBrand($html)
    {
        // TODO: Implement getBrand() method.
    }

    public function getDesctiption($html)
    {
        // TODO: Implement getDesctiption() method.
    }

    public function getImages($html)
    {
        preg_match_all('/<meta property="og:image"\n*\s*content="(\S*)"/ms', $html, $matches, PREG_SET_ORDER, 0);
        if (isset($matches[0]) && $matches[0][1]){
            return $matches[0][1];
        }
        // TODO: Implement getImages() method.
    }

    public function getCategories($html)
    {
        // TODO: Implement getCategories() method.
    }}
