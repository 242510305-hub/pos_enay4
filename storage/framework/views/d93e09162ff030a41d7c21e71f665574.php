<!DOCTYPE html>
<html lang="id">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Detail Struk #<?php echo e($sale->id); ?></title>
	<style>
		body { margin: 0; padding: 24px; background: #f1f3f5; color: #17212b; font-family: Arial, sans-serif; }
		.receipt { max-width: 420px; margin: auto; padding: 28px; background: #fff; box-shadow: 0 8px 24px rgba(0,0,0,.12); }
		.center { text-align: center; }
		.muted { color: #6c757d; font-size: 12px; }
		.line { border-bottom: 1px dashed #adb5bd; padding: 14px 0; }
		.row, .item { display: flex; justify-content: space-between; gap: 16px; font-size: 13px; }
		.row + .row { margin-top: 8px; }
		.item { align-items: flex-start; margin-bottom: 14px; }
		.item-name { flex: 1; }
		.subtext { color: #6c757d; margin-top: 3px; font-size: 12px; }
		.total { padding-top: 16px; font-size: 18px; font-weight: bold; }
		button { display: block; margin: 22px auto 0; padding: 9px 16px; border: 0; color: #fff; background: #0d6efd; cursor: pointer; }
		@media print { body { padding: 0; background: #fff; } .receipt { max-width: none; padding: 0; box-shadow: none; } button { display: none; } }
	</style>
</head>
<body>
	<main class="receipt">
		<header class="center line">
			<h2>STRUK PENJUALAN</h2>
			<div class="muted">Transaksi #<?php echo e($sale->id); ?></div>
		</header>
		<section class="line">
			<div class="row"><span>Tanggal</span><strong><?php echo e($sale->created_at->format('d/m/Y H:i')); ?></strong></div>
			<div class="row"><span>Kasir</span><strong><?php echo e($sale->user->name ?? '-'); ?></strong></div>
			<div class="row"><span>Pembayaran</span><strong><?php echo e($sale->metode_pembayaran ?? '-'); ?></strong></div>
		</section>
		<section class="line">
			<?php $__currentLoopData = $sale->itemPenjualan; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				<div class="item">
					<div class="item-name">
						<strong><?php echo e($item->produk->nama ?? 'Produk dihapus'); ?></strong>
						<div class="subtext"><?php echo e($item->kuantitas); ?> x Rp <?php echo e(number_format($item->harga_satuan, 0, ',', '.')); ?></div>
					</div>
					<strong>Rp <?php echo e(number_format($item->subtotal, 0, ',', '.')); ?></strong>
				</div>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		</section>
		<div class="row total">
			<span>Total</span>
			<span>Rp <?php echo e(number_format($sale->total_pembayaran, 0, ',', '.')); ?></span>
		</div>
		<footer class="center">
			<p class="muted">Terima kasih atas kunjungan Anda.</p>
			<button type="button" onclick="window.print()">Cetak Struk</button>
		</footer>
	</main>
</body>
</html>
<?php /**PATH C:\laragon\www\pos_enay4\resources\views/penjualan/struk.blade.php ENDPATH**/ ?>