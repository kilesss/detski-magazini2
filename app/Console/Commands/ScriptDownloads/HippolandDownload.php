<?php

namespace App\Console\Commands\ScriptDownloads;

use App\Console\Commands\Components\getProductsTrait;
use App\Models\ProductsForMapping;
use Illuminate\Console\Command;

class HippolandDownload extends Command
{
    use getProductsTrait;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:hippolands-products';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Download Hippoland Products';

    /**
     * Execute the console command.
     */

    private $urls = [];

    public function handle($link)
    {
        $i = true;
        $k = 1;
        while ($i == true){
           $i =  $this->getProducts($link.'?p='.$k);
            $k++;
            echo $k."\n";
        }

        $this->parseData(1, 'hippo', $this->urls);
    }

    function getProducts($link)
    {
        $html = file_get_contents($link);

        preg_match_all('/<a class="product-name-link" href="(\S+)">/ms', $html, $matches, PREG_SET_ORDER, 0);

        if (isset($matches[0][1])) {
            foreach ($matches as $m){
                $this->urls[] = $m[1];
            }
            return true;
        } else {
            return false;

        }
    }


}
