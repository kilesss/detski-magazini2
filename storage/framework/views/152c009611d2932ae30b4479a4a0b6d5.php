<?php echo $__env->make('admin.components.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="page-container iconic-view">
    <!--Leftbar Start Here -->
   <?php echo $__env->make('admin.components.leftMenu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <div class="page-content">
        <!--Topbar Start Here -->
        <?php echo $__env->make('admin.components.topMenu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="main-container">
            <!--Content of the pafe -->

        </div>

    </div>
</div>
<?php echo $__env->make('admin.components.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php /**PATH /home/kulinarc/detski-magazini/resources/views/admin/index.blade.php ENDPATH**/ ?>