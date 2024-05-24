<?php

namespace App\Console\Commands\MasterCommands;

use App\Models\ClientCategories;
use App\Models\Clients;
use App\Models\Products;
use App\Models\Shops;
use Illuminate\Console\Command;

class Parser extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:parser';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Parse categories one by one';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $categoriesModel = new ClientCategories();
        $category = $categoriesModel->getNotMappedCategory();
        $shopModel = new Clients();
        var_dump($category);
        $model = $shopModel->getScript($category->client_id);
        $productsModel = new Products();
        $productsModel->deleteProductsFromCategory($category->id);
        $modelString = 'App\Console\Commands\ScriptDownloads\\'.$model->script;
        $script = new $modelString;
        $script->handle($category->link);
    }
}
