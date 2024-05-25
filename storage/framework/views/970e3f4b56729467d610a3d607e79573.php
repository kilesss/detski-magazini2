<header class="header-area clearfix">
    <div class="container">
        <div class="row">
            <div class="col-xl-12" style="margin-top: 30px">




































            </div>
        </div>
    </div>
    <div class="container">
        <div class="header-midile">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-3 col-12">
                    <div class="lago">
                        <a href="<?php echo e(route('home')); ?>"><img src="<?php echo e(asset('front/img/detski_magazini.png')); ?>" style="max-width: 120%" alt="lago" /></a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-12">
                    <div class="search">
                        <form method="POST" action="<?php echo e(route('search')); ?>">
                            <input name="_token" type="hidden" value="<?php echo e(csrf_token()); ?>"/>
                            <input type="text" name="search" placeholder="Търсене"/>
                            <input type="submit" value="search">
                        </form>
                    </div>
                </div>




























            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="main-menu">
                    <ul class="nav floatleft">
                        <li class="active" ><a href="">home</a>

                    <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kcat => $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li class="mega-menu-two"><a href="<?php echo e(route('category',$kcat)); ?>"><?php echo e($cat['title']); ?></a>
                                <ul class="sub-menu">

                                <?php if($cat['elements']): ?>
                                    <ul class="sub-menu">
                                <?php $__currentLoopData = $cat['elements']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $skcat => $lem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li style="width: 350px"><a href="<?php echo e(route('category',$skcat)); ?>"><?php echo e($lem['title']); ?></a></li>

                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                </li>
                            <?php endif; ?>
                                </ul>
                            </li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                </div>
            </div>
        </div>
    </div>


    <!-- mobile-menu-area start -->
    <div class="mobile-menu-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mobile-menu">
                        <nav id="dropdown">
                            <ul>
                                <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kcat => $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><a href="#"><?php echo e($cat['title']); ?></a>

                                        <?php if($cat['elements']): ?>
                                            <ul>
                                                <?php $__currentLoopData = $cat['elements']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $skcat => $lem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <li><a href="<?php echo e(route('category',$skcat)); ?>"><?php echo e($lem['title']); ?></a></li>


                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>
                                        <?php endif; ?>

                                    </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <li><a href="index.html">Home</a>
                                    <ul>
                                        <li><a href="index-2.html">Home 2</a></li>
                                        <li><a href="index-3.html">Home 3</a></li>
                                    </ul>
                                </li>
                                <li><a href="blog.html">kids beds</a>
                                    <ul>
                                        <li><a href="shop.html">dresses</a>
                                            <ul>
                                                <li><a href="shop.html">Cocktail</a></li>
                                                <li><a href="shop.html">day</a></li>
                                                <li><a href="shop.html">Evening</a></li>
                                                <li><a href="shop.html">Sports</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="shop.html">clothing</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Sports</a></li>
                                                <li><a href="shop.html">Evening</a></li>
                                                <li><a href="shop.html">Cocktail</a></li>
                                                <li><a href="shop.html">day</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="shop.html">handbags</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Sports</a></li>
                                                <li><a href="shop.html">day</a></li>
                                                <li><a href="shop.html">Cocktail</a></li>
                                                <li><a href="shop.html">Evening</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="shop.html">shoes</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Sports</a></li>
                                                <li><a href="shop.html">Evening</a></li>
                                                <li><a href="shop.html">day</a></li>
                                                <li><a href="shop.html">Cocktail</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="shop.html"><img src="<?php echo e(asset('front/img/block_menu.png')); ?>" alt="" /></a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="shop.html">dressers</a>
                                    <ul>
                                        <li><a href="shop.html">dresses</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Bootees  Bags</a></li>
                                                <li><a href="shop.html">Blazers</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">clothing</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">coats</a></li>
                                                <li><a href="shop.html">T-shirts</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">handbags</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Bands</a></li>
                                                <li><a href="shop.html">Furniture</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">shoes</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Bands</a></li>
                                                <li><a href="shop.html">Lifestyle</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="shop.html">desks</a>
                                    <ul class="sub-menu">
                                        <li><a href="shop.html">dresses</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Cocktail</a></li>
                                                <li><a href="shop.html">day</a></li>
                                                <li><a href="shop.html">Evening</a></li>
                                                <li><a href="shop.html">Sports</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">clothing</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Sports</a></li>
                                                <li><a href="shop.html">Evening</a></li>
                                                <li><a href="shop.html">Cocktail</a></li>
                                                <li><a href="shop.html">day</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">handbags</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Sports</a></li>
                                                <li><a href="shop.html">day</a></li>
                                                <li><a href="shop.html">Cocktail</a></li>
                                                <li><a href="shop.html">Evening</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">shoes</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Sports</a></li>
                                                <li><a href="shop.html">Evening</a></li>
                                                <li><a href="shop.html">day</a></li>
                                                <li><a href="shop.html">Cocktail</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="shop.html">bookshelves</a>
                                    <ul class="sub-menu">
                                        <li><a href="shop.html">dresses</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Cocktail</a></li>
                                                <li><a href="shop.html">day</a></li>
                                                <li><a href="shop.html">Evening</a></li>
                                                <li><a href="shop.html">Sports</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">clothing</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Sports</a></li>
                                                <li><a href="shop.html">Evening</a></li>
                                                <li><a href="shop.html">Cocktail</a></li>
                                                <li><a href="shop.html">day</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">handbags</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Sports</a></li>
                                                <li><a href="shop.html">day</a></li>
                                                <li><a href="shop.html">Cocktail</a></li>
                                                <li><a href="shop.html">Evening</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">shoes</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Sports</a></li>
                                                <li><a href="shop.html">Evening</a></li>
                                                <li><a href="shop.html">day</a></li>
                                                <li><a href="shop.html">Cocktail</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="shop.html">armoires</a></li>
                                <li><a href="shop.html">pages</a>
                                    <ul>
                                        <li><a href="shop.html">Shop page</a></li>
                                        <li><a href="single-product.html">Single product</a></li>
                                        <li><a href="checkout-page.html">Checkout</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="contact-page.html">Contact us</a></li>
                                        <li><a href="blog.html">Blog</a></li>
                                        <li><a href="blog-details.html">Blog details</a></li>
                                        <li><a href="about-us.html">About us</a></li>
                                        <li><a href="service.html">Service</a></li>
                                        <li><a href="my-account.html">My account</a></li>
                                        <li><a href="login-register.html">Login register</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- mobile-menu-area end -->
</header>
<?php /**PATH C:\xampp8.2\htdocs\detski-magazini\resources\views/components/menu.blade.php ENDPATH**/ ?>