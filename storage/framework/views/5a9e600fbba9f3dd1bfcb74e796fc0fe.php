<?php echo $__env->make('components.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<!-- Header Area-->
<?php echo $__env->make('components.menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<!-- Promotion Area	Start -->

<!-- Promotion Area End-->
<!-- Product Area Start -->
<section class="product-area">
    <div class="container">
        <div class="row">
            <div class=" right-featured responsive-padding tab-content jump">
                <div role="tabpanel" class="tab-pane  active" id="arrival">
                    <div class="right-all-product">
                        <div class="row">
                            <?php $__currentLoopData = $mostChecked; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $mchec): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="single-product col-xl-4 col-lg-6 col-md-4 col-12">
                                    <div class="product-image">
                                        <a href="<?php echo e(route('product',$mchec['id'])); ?>"><img
                                                src="<?php echo e($mchec['image_url']); ?>"
                                                alt=""/>
                                        </a>
                                        <div class="efface"></div>
                                        <div class="cart-box">

                                            <div class="link">
                                                <a href="#"><i class="fa fa-search-plus"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <a href="<?php echo e(route('product',$mchec['id'])); ?>"><p><?php echo e($mchec['title']); ?></p></a>
                                        <div class="price">
                                            <a href="<?php echo e(route('product',$mchec['id'])); ?>"><h5><?php echo e($mchec['price']); ?> лв.</h5>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<div class="container" style="
    margin-bottom: 45px;
">
    <div class="bg-bd">
        <div class="cl-logo owl-carousel owl-loaded owl-drag">


            <div class="owl-stage-outer">
                <div class="owl-stage"
                     style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1870px;">
                    <?php $__currentLoopData = $clients; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $client): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="owl-item active" style="width: 157px; margin-right: 30px;">
                            <div class="brand-logo">
                                <a href="<?php echo e($client['url']); ?>"><img src="<?php echo e($client['logo']); ?>" alt=""></a>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                </div>
            </div>

        </div>

    </div>
</div><!-- Product Area End -->
<!-- Featured Product Area Start -->
<section class="featured-product-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-4">
                <div class="left-featured  bg-bd">
                    <h4 class="left-featured-head">ADS</h4>
                    <div style="background-color: red;width: 100%;HEIGHT: 423PX;">

                    </div>
                </div>
                <div class="add">
                    <a href="#"><img src="<?php echo e(asset('front/img/free_shipping.jpg')); ?>" alt=""/></a>
                </div>
            </div>
            <div class="col-xl-9 col-lg-9 col-md-8">
                <div class="right-featured responsive-padding">
                    <div class="right-feature-head">
                    </div>
                    <div class="right-all-product">
                        <div class="row">

                        <?php $__currentLoopData = $randomProd2; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $mchec): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                            <div class="single-product col-xl-4 col-lg-6 col-md-4 col-12">
                                <div class="product-image">
                                    <a href="<?php echo e(route('product',$mchec['id'])); ?>"><img
                                            src="<?php echo e($mchec['image_url']); ?>"
                                            alt=""/>
                                    </a>
                                    <div class="efface"></div>
                                    <div class="cart-box">

                                        <div class="link">
                                            <a href="#"><i class="fa fa-search-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-box">
                                    <a href="<?php echo e(route('product',$mchec['id'])); ?>"><p><?php echo e($mchec['title']); ?></p></a>
                                    <div class="price">
                                        <a href="<?php echo e(route('product',$mchec['id'])); ?>"><h5><?php echo e($mchec['price']); ?> лв.</h5></a>
                                    </div>
                                </div>
                            </div>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        </div>
                    </div>

                </div>

                <div class=" right-featured responsive-padding tab-content jump">
                    <div role="tabpanel" class="tab-pane  active" id="arrival">
                        <div class="right-all-product">
                            <div class="row">
                                <?php $__currentLoopData = $randomProd3; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $mchec): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="single-product col-xl-4 col-lg-6 col-md-4 col-12">
                                        <div class="product-image">
                                            <a href="<?php echo e(route('product',$mchec['id'])); ?>"><img
                                                    src="<?php echo e($mchec['image_url']); ?>"
                                                    alt=""/>
                                            </a>
                                            <div class="efface"></div>
                                            <div class="cart-box">

                                                <div class="link">
                                                    <a href="#"><i class="fa fa-search-plus"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="price-box">
                                            <a href="<?php echo e(route('product',$mchec['id'])); ?>"><p><?php echo e($mchec['title']); ?></p></a>
                                            <div class="price">
                                                <a href="<?php echo e(route('product',$mchec['id'])); ?>"><h5><?php echo e($mchec['price']); ?> лв.</h5>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<?php echo $__env->make('components.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php /**PATH C:\xampp8.2\htdocs\detski-magazini\resources\views/home.blade.php ENDPATH**/ ?>