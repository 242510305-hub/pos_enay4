

<?php $__env->startSection('title', 'POS'); ?>

<?php $__env->startSection('content'); ?>

<style>
    .pos-page {
        background: #f8fafc;
        min-height: calc(100vh - 70px);
        padding: 25px 0 40px;
    }

    .pos-title {
        font-size: 28px;
        font-weight: 800;
        color: #172033;
        margin-bottom: 4px;
    }

    .pos-subtitle {
        color: #718096;
        margin-bottom: 0;
    }

    .pos-card {
        background: #fff;
        border: 1px solid #e8edf3;
        border-radius: 18px;
        box-shadow: 0 8px 25px rgba(15, 23, 42, .06);
        overflow: hidden;
    }

    .pos-card-header {
        padding: 18px 20px;
        border-bottom: 1px solid #edf0f5;
        background: #fff;
    }

    .section-title {
        font-size: 17px;
        font-weight: 700;
        color: #1e293b;
        margin: 0;
    }

    .section-subtitle {
        font-size: 13px;
        color: #94a3b8;
        margin-top: 3px;
    }

    .search-wrapper {
        position: relative;
    }

    .search-wrapper .search-icon {
        position: absolute;
        left: 16px;
        top: 50%;
        transform: translateY(-50%);
        color: #94a3b8;
        z-index: 2;
    }

    .search-input {
        height: 48px;
        border-radius: 12px;
        border: 1px solid #dfe5ec;
        padding-left: 45px;
        padding-right: 90px;
        box-shadow: none !important;
    }

    .search-input:focus {
        border-color: #0d6efd;
    }

    .search-button {
        position: absolute;
        right: 6px;
        top: 5px;
        height: 38px;
        border-radius: 9px;
        padding: 0 15px;
        border: none;
    }

    .product-list {
        max-height: 610px;
        overflow-y: auto;
        padding: 16px;
    }

    .product-list::-webkit-scrollbar {
        width: 7px;
    }

    .product-list::-webkit-scrollbar-thumb {
        background: #cbd5e1;
        border-radius: 20px;
    }

    .product-row {
        display: flex;
        align-items: center;
        gap: 10px;
        margin-bottom: 11px;
    }

    .product-card {
        flex: 1;
        min-width: 0;
        min-height: 72px;
        padding: 9px 12px;
        border: 1px solid #e2e8f0;
        border-radius: 13px;
        background: #fff;
        transition: .2s ease;
    }

    .product-card:hover {
        border-color: #0d6efd;
        box-shadow: 0 5px 15px rgba(13, 110, 253, .08);
        transform: translateY(-1px);
    }

    .product-image {
        width: 52px;
        height: 52px;
        object-fit: cover;
        border-radius: 11px;
        background: #f1f5f9;
        border: 1px solid #e5e7eb;
        flex-shrink: 0;
    }

    .product-name {
        color: #1e293b;
        font-weight: 700;
        font-size: 14px;
        margin-bottom: 4px;
        line-height: 1.3;
    }

    .product-price {
        color: #0d6efd;
        font-size: 13px;
        font-weight: 600;
    }

    .qty-input {
        width: 78px;
        height: 43px;
        border-radius: 10px;
        border: 1px solid #dbe2ea;
        text-align: center;
        font-weight: 600;
    }

    .qty-input:focus {
        border-color: #0d6efd;
        box-shadow: 0 0 0 .15rem rgba(13, 110, 253, .1);
    }

    .add-button {
        width: 46px;
        height: 43px;
        border-radius: 10px;
        border: none;
        font-size: 20px;
        font-weight: 700;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .cart-wrapper {
        padding: 18px;
    }

    .cart-table-wrapper {
        overflow-x: auto;
    }

    .cart-table {
        margin-bottom: 0;
        min-width: 620px;
        vertical-align: middle;
    }

    .cart-table thead th {
        background: #f8fafc;
        color: #475569;
        font-size: 13px;
        font-weight: 700;
        padding: 13px 12px;
        border-bottom: 1px solid #e2e8f0;
        white-space: nowrap;
    }

    .cart-table tbody td {
        padding: 13px 12px;
        font-size: 14px;
        color: #334155;
        border-color: #edf0f5;
    }

    .cart-product-name {
        font-weight: 600;
        color: #1e293b;
    }

    .cart-price {
        font-weight: 600;
        white-space: nowrap;
    }

    .cart-qty {
        width: 75px;
        text-align: center;
        border-radius: 8px;
    }

    .delete-button {
        border-radius: 8px;
    }

    .empty-cart {
        padding: 55px 20px !important;
        text-align: center;
    }

    .empty-cart-icon {
        width: 65px;
        height: 65px;
        margin: auto;
        border-radius: 50%;
        background: #eff6ff;
        color: #0d6efd;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 27px;
        margin-bottom: 15px;
    }

    .empty-cart h6 {
        font-weight: 700;
        color: #334155;
        margin-bottom: 5px;
    }

    .empty-cart p {
        color: #94a3b8;
        font-size: 13px;
        margin: 0;
    }

    .cart-footer {
        border-top: 1px solid #e8edf3;
        background: #fafcff;
        padding: 20px;
    }

    .total-label {
        color: #64748b;
        font-size: 13px;
        margin-bottom: 3px;
    }

    .total-price {
        color: #0f172a;
        font-size: 27px;
        font-weight: 800;
        margin-bottom: 17px;
    }

    .payment-label {
        font-size: 13px;
        font-weight: 700;
        color: #475569;
        margin-bottom: 7px;
    }

    .payment-select {
        height: 47px;
        border-radius: 11px;
        border: 1px solid #dbe2ea;
        margin-bottom: 12px;
    }

    .checkout-button {
        height: 48px;
        border-radius: 11px;
        font-weight: 700;
        border: none;
    }

    .cancel-button {
        height: 46px;
        border-radius: 11px;
        font-weight: 600;
    }

    .status-badge {
        display: inline-flex;
        align-items: center;
        gap: 5px;
        padding: 6px 10px;
        border-radius: 20px;
        font-size: 12px;
        font-weight: 700;
        background: #dcfce7;
        color: #15803d;
    }

    .completed-box {
        background: #f0fdf4;
        border: 1px solid #bbf7d0;
        border-radius: 12px;
        padding: 13px;
        margin-bottom: 14px;
    }

    .completed-box i {
        color: #16a34a;
    }

    .back-button {
        border-radius: 10px;
        font-weight: 600;
    }

    @media (max-width: 991px) {
        .product-list {
            max-height: 500px;
        }

        .pos-title {
            font-size: 24px;
        }
    }

    @media (max-width: 575px) {
        .pos-page {
            padding: 15px 0 30px;
        }

        .product-row {
            flex-wrap: wrap;
        }

        .product-card {
            width: 100%;
            flex: none;
        }

        .qty-input {
            flex: 1;
        }

        .add-button {
            width: 52px;
        }

        .search-button span {
            display: none;
        }

        .search-button {
            width: 40px;
            padding: 0;
        }

        .total-price {
            font-size: 23px;
        }
    }
</style>

<div class="pos-page">

    <div class="container">

        
        <div class="d-flex flex-wrap justify-content-between align-items-center gap-3 mb-4">

            <div>
                <div class="d-flex align-items-center gap-2">
                    <i class="bi bi-cart3 text-primary fs-3"></i>

                    <h1 class="pos-title mb-0">
                        Tambah dan Edit
                    </h1>
                </div>

                <p class="pos-subtitle mt-1">
                    Kelola produk dan transaksi penjualan dengan mudah.
                </p>
            </div>

            <a href="<?php echo e(route('dashboard')); ?>"
               class="btn btn-outline-primary back-button px-3">

                <i class="bi bi-house-fill me-2"></i>
                Dashboard

            </a>

        </div>


        

        <?php if(session('success')): ?>

            <div class="alert alert-success alert-dismissible fade show rounded-3 border-0 shadow-sm"
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

            <div class="alert alert-danger alert-dismissible fade show rounded-3 border-0 shadow-sm"
                 role="alert">

                <i class="bi bi-exclamation-triangle-fill me-2"></i>

                <?php echo e(session('error')); ?>


                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="alert">
                </button>

            </div>

        <?php endif; ?>


        <?php if(session('errors')): ?>

            <div class="alert alert-danger alert-dismissible fade show rounded-3 border-0 shadow-sm"
                 role="alert">

                <i class="bi bi-exclamation-triangle-fill me-2"></i>

                <?php echo e(session('errors')); ?>


                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="alert">
                </button>

            </div>

        <?php endif; ?>


        <div class="row g-4">


            
            
            

            <div class="col-lg-6">

                <div class="pos-card h-100">

                    
                    <div class="pos-card-header">

                        <div class="d-flex justify-content-between align-items-center">

                            <div>

                                <h5 class="section-title">
                                    <i class="bi bi-box-seam text-primary me-2"></i>
                                    Daftar Produk
                                </h5>

                                <div class="section-subtitle">
                                    Pilih produk yang ingin ditambahkan
                                </div>

                            </div>

                            <span class="badge bg-primary-subtle text-primary rounded-pill px-3 py-2">
                                <?php echo e($products->count()); ?> Produk
                            </span>

                        </div>

                    </div>


                    

                    <div class="px-3 pt-3">

                        <form method="GET"
                              action="<?php echo e(route('admin.penjualan.create')); ?>">

                            <div class="search-wrapper">

                                <i class="bi bi-search search-icon"></i>

                                <input type="text"
                                       name="search"
                                       value="<?php echo e(request('search')); ?>"
                                       class="form-control search-input"
                                       placeholder="Cari nama produk...">

                                <button type="submit"
                                        class="btn btn-primary search-button">

                                    <i class="bi bi-search"></i>
                                    <span class="ms-1">Cari</span>

                                </button>

                            </div>

                        </form>

                    </div>


                    

                    <div class="product-list">

                        <?php $__empty_1 = true; $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>

                            <form method="POST"
                                  action="<?php echo e(route('admin.itempenjualan.store')); ?>">

                                <?php echo csrf_field(); ?>

                                <input type="hidden"
                                       name="product_id"
                                       value="<?php echo e($product->id); ?>">


                                <div class="product-row">


                                    

                                    <button type="submit"
                                            class="product-card text-start"
                                            name="add_product"
                                            value="1"
                                            <?php echo e($sale->status === 'COMPLETED' ? 'disabled' : ''); ?>>

                                        <div class="d-flex align-items-center gap-3">

                                            <?php if($product->foto): ?>

                                                <img src="<?php echo e(asset('storage/' . $product->foto)); ?>"
                                                     alt="<?php echo e($product->nama); ?>"
                                                     class="product-image"
                                                     onerror="this.onerror=null;this.src='<?php echo e(asset('images/no-image.png')); ?>';">

                                            <?php else: ?>

                                                <div class="product-image d-flex align-items-center justify-content-center">

                                                    <i class="bi bi-image text-secondary fs-4"></i>

                                                </div>

                                            <?php endif; ?>


                                            <div class="flex-grow-1 min-w-0">

                                                <div class="product-name text-truncate">

                                                    <?php echo e($product->nama); ?>


                                                </div>

                                                <div class="product-price">

                                                    Rp <?php echo e(number_format($product->harga_jual, 0, ',', '.')); ?>


                                                </div>

                                                <small class="text-muted">

                                                    Stok: <?php echo e($product->stok); ?>


                                                </small>

                                            </div>

                                        </div>

                                    </button>


                                    

                                    <input type="number"
                                           name="quantity"
                                           value="1"
                                           min="1"
                                           max="<?php echo e($product->stok); ?>"
                                           class="form-control qty-input"
                                           <?php echo e($sale->status === 'COMPLETED' ? 'readonly' : ''); ?>>


                                    

                                    <button type="submit"
                                            class="btn btn-primary add-button"
                                            <?php echo e($sale->status === 'COMPLETED' ? 'disabled' : ''); ?>>

                                        <i class="bi bi-plus-lg"></i>

                                    </button>

                                </div>

                            </form>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>

                            <div class="empty-cart">

                                <div class="empty-cart-icon">

                                    <i class="bi bi-search"></i>

                                </div>

                                <h6>
                                    Produk tidak ditemukan
                                </h6>

                                <p>
                                    Coba gunakan kata kunci pencarian yang berbeda.
                                </p>

                            </div>

                        <?php endif; ?>

                    </div>

                </div>

            </div>



            
            
            

            <div class="col-lg-6">

                <div class="pos-card">

                    

                    <div class="pos-card-header">

                        <div class="d-flex justify-content-between align-items-center">

                            <div>

                                <h5 class="section-title">

                                    <i class="bi bi-basket2-fill text-primary me-2"></i>

                                    Keranjang Belanja

                                </h5>

                                <div class="section-subtitle">

                                    Produk yang dipilih untuk transaksi

                                </div>

                            </div>


                            <span class="badge bg-primary rounded-pill px-3 py-2">

                                <?php echo e($sale->itemPenjualan->count()); ?> Item

                            </span>

                        </div>

                    </div>



                    

                    <div class="cart-wrapper">

                        <div class="cart-table-wrapper">

                            <table class="table cart-table">

                                <thead>

                                    <tr>

                                        <th>Produk</th>

                                        <th>Harga</th>

                                        <th>Qty</th>

                                        <th>Subtotal</th>

                                        <th class="text-center">Aksi</th>

                                    </tr>

                                </thead>


                                <tbody>

                                    <?php $__empty_1 = true; $__currentLoopData = $sale->itemPenjualan; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>

                                        <tr>

                                            

                                            <td>

                                                <div class="cart-product-name">

                                                    <?php echo e($item->produk->nama); ?>


                                                </div>

                                            </td>


                                            

                                            <td>

                                                <span class="cart-price">

                                                    Rp <?php echo e(number_format($item->produk->harga_jual, 0, ',', '.')); ?>


                                                </span>

                                            </td>


                                            

                                            <td>

                                                <form method="POST"
                                                      action="<?php echo e(route('admin.itempenjualan.update', $item->id)); ?>">

                                                    <?php echo csrf_field(); ?>

                                                    <?php echo method_field('PUT'); ?>

                                                    <input type="number"
                                                           name="quantity"
                                                           value="<?php echo e($item->kuantitas); ?>"
                                                           min="1"
                                                           class="form-control form-control-sm cart-qty"
                                                           onchange="this.form.submit()">

                                                </form>

                                            </td>


                                            

                                            <td>

                                                <strong>

                                                    Rp <?php echo e(number_format($item->subtotal, 0, ',', '.')); ?>


                                                </strong>

                                            </td>


                                            

                                            <td class="text-center">

                                                <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('delete', $item)): ?>

                                                    <form method="POST"
                                                          action="<?php echo e(route('admin.itempenjualan.destroy', $item->id)); ?>"
                                                          onsubmit="return confirm('Yakin ingin menghapus produk ini dari keranjang?')">

                                                        <?php echo csrf_field(); ?>

                                                        <?php echo method_field('DELETE'); ?>

                                                        <button type="submit"
                                                                class="btn btn-sm btn-outline-danger delete-button">

                                                            <i class="bi bi-trash3"></i>

                                                        </button>

                                                    </form>

                                                <?php endif; ?>

                                            </td>

                                        </tr>

                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>

                                        <tr>

                                            <td colspan="5"
                                                class="empty-cart">

                                                <div class="empty-cart-icon">

                                                    <i class="bi bi-cart-x"></i>

                                                </div>

                                                <h6>
                                                    Keranjang masih kosong
                                                </h6>

                                                <p>
                                                    Tambahkan produk dari daftar di sebelah kiri.
                                                </p>

                                            </td>

                                        </tr>

                                    <?php endif; ?>

                                </tbody>

                            </table>

                        </div>

                    </div>



                    
                    
                    

                    <div class="cart-footer">


                        

                        <?php if($sale->status === 'COMPLETED'): ?>

                            <div class="completed-box">

                                <div class="d-flex align-items-center gap-2">

                                    <i class="bi bi-check-circle-fill fs-5"></i>

                                    <div>

                                        <div class="fw-bold text-success">

                                            Transaksi Selesai

                                        </div>

                                        <small class="text-muted">

                                            Transaksi ini sudah berhasil checkout.

                                        </small>

                                    </div>

                                </div>

                            </div>

                        <?php endif; ?>



                        

                        <div class="total-label">

                            Total Pembayaran

                        </div>

                        <div class="total-price">

                            Rp <?php echo e(number_format($sale->total_pembayaran, 0, ',', '.')); ?>


                        </div>



                        

                        <form method="POST"
                              action="<?php echo e(route('admin.penjualan.update', $sale->id)); ?>"
                              onsubmit="return confirm('Yakin ingin checkout transaksi ini?')">

                            <?php echo csrf_field(); ?>

                            <?php echo method_field('PUT'); ?>


                            <label class="payment-label">

                                <i class="bi bi-credit-card me-1"></i>

                                Metode Pembayaran

                            </label>


                            <select name="payment_method"
                                    class="form-select payment-select"
                                    required
                                    <?php echo e($sale->status === 'COMPLETED' ? 'disabled' : ''); ?>>

                                <option value="">
                                    Pilih Pembayaran
                                </option>

                                <option value="CASH">
                                    💵 CASH
                                </option>

                                <option value="QRIS">
                                    📱 QRIS
                                </option>

                            </select>


                            <button type="submit"
                                    class="btn btn-success checkout-button w-100"
                                    <?php echo e($sale->status === 'COMPLETED' ? 'disabled' : ''); ?>>

                                <i class="bi bi-check-circle-fill me-2"></i>

                                Checkout

                            </button>

                        </form>



                        

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('delete', $sale)): ?>

                            <form method="POST"
                                  action="<?php echo e(route('admin.penjualan.destroy', $sale->id)); ?>"
                                  class="mt-2"
                                  onsubmit="return confirm('Yakin ingin membatalkan transaksi ini?')">

                                <?php echo csrf_field(); ?>

                                <?php echo method_field('DELETE'); ?>


                                <button type="submit"
                                        class="btn btn-outline-danger cancel-button w-100"
                                        <?php echo e($sale->status === 'COMPLETED' ? 'disabled' : ''); ?>>

                                    <i class="bi bi-x-circle me-2"></i>

                                    Batal Transaksi

                                </button>

                            </form>

                        <?php endif; ?>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\laragon\www\pos_enay4\resources\views/penjualan/pos.blade.php ENDPATH**/ ?>