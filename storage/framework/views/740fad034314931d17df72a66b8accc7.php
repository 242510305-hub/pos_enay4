

<?php $__env->startSection('content'); ?>
<div class="container py-4">

    
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h3 class="fw-bold mb-1">
                <i class="bi bi-pencil-square text-primary me-2"></i>
                Edit Jenis
            </h3>
            <p class="text-muted mb-0">
                Ubah informasi jenis produk
            </p>
        </div>

        <a href="<?php echo e(route('admin.jenis.index')); ?>"
           class="btn btn-outline-secondary rounded-pill px-4">
            <i class="bi bi-arrow-left me-1"></i>
            Kembali
        </a>
    </div>

    
    <div class="card border-0 shadow-sm rounded-4">
        <div class="card-body p-4">

            <form action="<?php echo e(route('admin.jenis.update', $jeni->id)); ?>"
                  method="POST">

                <?php echo csrf_field(); ?>
                <?php echo method_field('PUT'); ?>

                
                <div class="mb-4">
                    <label for="nama_jenis" class="form-label fw-semibold">
                        Nama Jenis
                    </label>

                    <div class="input-group">
                        <span class="input-group-text bg-primary text-white border-0">
                            <i class="bi bi-tags-fill"></i>
                        </span>

                        <input type="text"
                               id="nama_jenis"
                               name="nama_jenis"
                               class="form-control <?php $__errorArgs = ['nama_jenis'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                               value="<?php echo e(old('nama_jenis', $jeni->nama_jenis)); ?>"
                               placeholder="Masukkan nama jenis"
                               required>

                        <?php $__errorArgs = ['nama_jenis'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <div class="invalid-feedback">
                                <?php echo e($message); ?>

                            </div>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    </div>
                </div>

                
                <div class="d-flex justify-content-end gap-2">

                    <a href="<?php echo e(route('admin.jenis.index')); ?>"
                       class="btn btn-light border rounded-pill px-4">
                        Batal
                    </a>

                    <button type="submit"
                            class="btn btn-primary rounded-pill px-4">
                        <i class="bi bi-check-circle me-1"></i>
                        Simpan Perubahan
                    </button>

                </div>

            </form>

        </div>
    </div>

</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\laragon\www\pos_enay3\resources\views/jenis/edit.blade.php ENDPATH**/ ?>