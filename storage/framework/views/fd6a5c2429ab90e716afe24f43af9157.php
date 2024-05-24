<?php echo $__env->make('admin.components.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="page-container iconic-view">
    <!--Leftbar Start Here -->
    <?php echo $__env->make('admin.components.leftMenu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <div class="page-content">
        <!--Topbar Start Here -->
        <?php echo $__env->make('admin.components.topMenu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="main-container">
            <!--Content of the pafe -->
            <div class="box-widget widget-module">
                <div class="widget-head clearfix">
                    <span class="h-icon"><i class="fa fa-table"></i></span>
                    <h4>Категории</h4>
                </div>
                <div class="widget-container">
                    <div class="widget-block">
                        <div class="row">

                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-bordered matmix-dt bg-hc-border">
                                <thead>
                                <tr>
                                    <th colspan="6"></th>
                                    <th colspan="1">
                                        <div class="form-group td-bulk-action">
                                            <button class="btn btn-success" data-toggle="modal" data-target="#editshopModal"
                                                    onclick="fillCategory('','', '0', '0')" style="float: right">Нова категория
                                                </button>
                                            </div>
                                    </th>
                                </tr>
                                <tr>
                                    <th colspan="6">
                                        Име
                                    </th>
                                    <th class="tc-center" colspan="1">
                                        Action
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td colspan="6">
                                        <?php echo e($cat->title); ?>

                                    </td>
                                    <td class="tc-center" colspan="1">
                                        <div class="btn-toolbar" role="toolbar">
                                            <div class="btn-group" role="group">
                                                <a href="#" class="btn btn-default btn-sm m-user-edit"
                                                   data-toggle="modal" data-target="#editshopModal"
                                                   onclick="fillCategory('<?php echo e($cat->title); ?>','<?php echo e($cat->master_id); ?>', '<?php echo e($cat->id); ?>')">Редактирай</a>
                                                <a href="#" class="btn btn-default btn-sm m-user-delete">Изтрий</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="editshopModal" tabindex="-1" role="dialog" aria-labelledby="editshop"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editshop">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form method="post" id="formID" enctype="multipart/form-data">
                        <?php echo e(csrf_field()); ?>

                    <div class="content">
                        <div class="col-md-12" style="padding-bottom: 22px; padding-top: 22px">
                            <div class="form-group">
                                <label class="col-md-4 control-label" style="padding-left: 0px; padding-top: 19px;">Име</label>
                                <div class=" col-md-8" style="padding-left: 0px; padding-top: 19px;">
                                    <input type="text" name="title" id="title" class="form-control">
                                </div>
                            </div>
                            <input type="hidden" name="id" id="id" value="0">
                            <div class="form-group">
                                <label class="col-md-4 control-label" style="padding-left: 0px; padding-top: 19px;">Основна категория</label>
                                <div class="col-md-8" style="padding-left: 0px; padding-top: 19px;">
                                    <select name="parent_cat" id="parent_cat" class="form-control">

                                        <option value="0">Няма</option>
                                        <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($cat['master_id'] == 0): ?>
                                        <option value="<?php echo e($cat->id); ?>"><?php echo e($cat->title); ?></option>
                                            <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>





























                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                    </form>
            </div>
            </div>
        </div>
    </div>
    <?php echo $__env->make('admin.components.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <script>
        /*Edit Delete Alert in Table*/

        function fillCategory(name, parent, id){
            $("#title").val(name);
            $("#id").val(id);
            $("#parent_cat").val(parent)

        }
    </script>
    </body>
    </html>
<?php /**PATH C:\xampp\htdocs\detski-magazini\resources\views/admin/categories.blade.php ENDPATH**/ ?>