

<?php $__env->startSection('content'); ?>

<div class="container py-4">

    
    <div class="d-flex flex-wrap justify-content-between align-items-center gap-3 mb-4">

        <div>
            <h3 class="fw-bold mb-1">
                <i class="bi bi-tags-fill text-primary me-2"></i>
                Data Jenis Produk
            </h3>

            <p class="text-muted mb-0">
                Kelola jenis atau kategori produk yang tersedia.
            </p>
        </div>

        <a href="<?php echo e(route('admin.jenis.create')); ?>"
           class="btn btn-primary rounded-pill px-4 shadow-sm">

            <i class="bi bi-plus-lg me-1"></i>
            Tambah Jenis

        </a>

    </div>


    
    <?php if(session('success')): ?>

        <div class="alert alert-success alert-dismissible fade show rounded-4 border-0 shadow-sm"
             role="alert">

            <i class="bi bi-check-circle-fill me-2"></i>
            <?php echo e(session('success')); ?>


            <button type="button"
                    class="btn-close"
                    data-bs-dismiss="alert">
            </button>

        </div>

    <?php endif; ?>


    
    <?php if(session('error')): ?>

        <div class="alert alert-danger alert-dismissible fade show rounded-4 border-0 shadow-sm"
             role="alert">

            <i class="bi bi-exclamation-triangle-fill me-2"></i>
            <?php echo e(session('error')); ?>


            <button type="button"
                    class="btn-close"
                    data-bs-dismiss="alert">
            </button>

        </div>

    <?php endif; ?>


    
    <div class="card border-0 shadow-sm rounded-4 overflow-hidden">

        
        <div class="card-header bg-white border-0 px-4 py-3">

            <div class="d-flex align-items-center justify-content-between">

                <div>
                    <h5 class="fw-bold mb-1">
                        Daftar Jenis
                    </h5>

                    <small class="text-muted">
                        Total <?php echo e($jenis->total()); ?> jenis
                    </small>
                </div>

                <div class="bg-primary-subtle text-primary rounded-3 p-2">

                    <i class="bi bi-tags-fill fs-5"></i>

                </div>

            </div>

        </div>


        
        <div class="table-responsive">

            <table class="table table-hover align-middle mb-0">

                <thead class="table-light">

                    <tr>

                        <th class="px-4 py-3" style="width: 80px;">
                            No
                        </th>

                        <th class="py-3">
                            Nama Jenis
                        </th>

                        <th class="py-3">
                            Dibuat
                        </th>

                        <th class="text-center py-3" style="width: 180px;">
                            Aksi
                        </th>

                    </tr>

                </thead>


                <tbody>

                    
                    <?php $__empty_1 = true; $__currentLoopData = $jenis; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>

                        <tr>

                            
                            <td class="px-4 fw-semibold text-muted">

                                <?php echo e($jenis->firstItem() + $loop->index); ?>


                            </td>


                            
                            <td>

                                <div class="d-flex align-items-center gap-3">

                                    <div class="bg-primary-subtle text-primary rounded-3
                                                d-flex align-items-center justify-content-center"
                                         style="width: 42px; height: 42px;">

                                        <i class="bi bi-tag-fill"></i>

                                    </div>


                                    <div>

                                        <div class="fw-semibold">
                                            <?php echo e($item->nama_jenis); ?>

                                        </div>

                                        <small class="text-muted">
                                            ID #<?php echo e($item->id); ?>

                                        </small>

                                    </div>

                                </div>

                            </td>


                            
                            <td>

                                <span class="text-muted">

                                    <?php echo e($item->created_at?->format('d M Y')); ?>


                                </span>

                            </td>


                            
                            <td>

                                <div class="d-flex justify-content-center gap-2">

                                    
                                    <a href="<?php echo e(route('admin.jenis.edit', $item->id)); ?>"
                                       class="btn btn-sm btn-outline-primary rounded-pill px-3"
                                       title="Edit">

                                        <i class="bi bi-pencil-square"></i>

                                    </a>


                                    
                                    <form action="<?php echo e(route('admin.jenis.destroy', $item->id)); ?>"
                                          method="POST"
                                          onsubmit="return confirm('Yakin ingin menghapus jenis ini?')">

                                        <?php echo csrf_field(); ?>
                                        <?php echo method_field('DELETE'); ?>

                                        <button type="submit"
                                                class="btn btn-sm btn-outline-danger rounded-pill px-3"
                                                title="Hapus">

                                            <i class="bi bi-trash3-fill"></i>

                                        </button>

                                    </form>

                                </div>

                            </td>

                        </tr>


                    
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>

                        <tr>

                            <td colspan="4" class="text-center py-5">

                                <div class="text-muted">

                                    <i class="bi bi-tags fs-1 d-block mb-3"></i>

                                    <h5 class="fw-semibold">
                                        Belum ada jenis
                                    </h5>

                                    <p class="mb-3">
                                        Belum ada data jenis produk.
                                    </p>

                                    <a href="<?php echo e(route('admin.jenis.create')); ?>"
                                       class="btn btn-primary rounded-pill px-4">

                                        <i class="bi bi-plus-lg me-1"></i>
                                        Tambah Jenis

                                    </a>

                                </div>

                            </td>

                        </tr>

                    <?php endif; ?>

                </tbody>

            </table>

        </div>


        
        <?php if($jenis->hasPages()): ?>

            <div class="card-footer bg-white border-0 px-4 py-3">

                <?php echo e($jenis->links()); ?>


            </div>

        <?php endif; ?>

    </div>


    
    <div class="mt-4">

        <a href="<?php echo e(route('dashboard')); ?>"
           class="btn btn-outline-primary rounded-pill px-4">

            <i class="bi bi-house-fill me-2"></i>
            Kembali ke Dashboard

        </a>

    </div>

</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\laragon\www\pos_enay4\resources\views/jenis/index.blade.php ENDPATH**/ ?>