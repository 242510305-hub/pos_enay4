

<?php $__env->startSection('title', 'Edit Produk'); ?>

<?php $__env->startSection('content'); ?>
<div class="container py-4">
    <div class="card border-0 shadow-sm rounded-3">
        <div class="card-body p-4">
            <h4 class="card-title mb-4">Edit Produk</h4>

            <form action="<?php echo e(route('admin.produk.update', $produk)); ?>"
                  method="POST"
                  enctype="multipart/form-data">
                <?php echo method_field('PUT'); ?>
                <?php echo $__env->make('Produk._form', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
            </form>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\laragon\www\pos_enay4\resources\views/Produk/edit.blade.php ENDPATH**/ ?>