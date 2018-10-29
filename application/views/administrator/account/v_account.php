<div class="row">
	<div class="col-md-8 col-md-offset-2 col-xs-12"><?php echo $this->session->flashdata('alert'); ?></div>

		<?php  
/**
 * Open Form
 *
 * @var string
 **/
echo form_open(current_url(), array('class' => 'form-horizontal', 'enctype'=>'multipart/form-data'));
?>


	<div class="col-md-10 col-md-offset-1 col-xs-12">
		<div class="box box-success form-horizontal">

			<div class="box-body" style="margin-top: 10px;">
				
				<div class="form-group">
					<label for="email" class="control-label col-md-3 col-xs-12">Username : <strong class="text-red">*</strong></label>
					<div class="col-md-8">
						<input type="text" name="username" class="form-control" value="<?php echo $get->username; ?>">
						<p class="help-block"><?php echo form_error('username', '<small class="text-red">', '</small>'); ?></p>
					</div>
				</div>

				<div class="form-group">
					<label for="email" class="control-label col-md-3 col-xs-12">Password Lama: <strong class="text-red">*</strong></label>
					<div class="col-md-8">
						<input type="password" name="password_lama" class="form-control" value="<?php echo set_value('password_lama'); ?>">
						<p class="help-block"><?php echo form_error('password_lama', '<small class="text-red">', '</small>'); ?></p>
					</div>
				</div>

				<div class="form-group">
					<label for="email" class="control-label col-md-3 col-xs-12">Password : <strong class="text-red">*</strong></label>
					<div class="col-md-8">
						<input type="password" name="password" class="form-control" value="<?php echo set_value('password'); ?>">
						<p class="help-block"><?php echo form_error('password', '<small class="text-red">', '</small>'); ?></p>
					</div>
				</div>

				<div class="form-group">
					<label for="email" class="control-label col-md-3 col-xs-12">Ulangi Password : <strong class="text-red">*</strong></label>
					<div class="col-md-8">
						<input type="password" name="ulangi_password" class="form-control" value="<?php echo set_value('ulangi_password'); ?>">
						<p class="help-block"><?php echo form_error('ulangi_password', '<small class="text-red">', '</small>'); ?></p>
					</div>
				</div>

				<div class="form-group">
					<label for="email" class="control-label col-md-3 col-xs-12">Email : <strong class="text-red">*</strong></label>
					<div class="col-md-8">
						<input type="text" name="email" class="form-control" value="<?php echo $get->email; ?>">
						<p class="help-block"><?php echo form_error('email', '<small class="text-red">', '</small>'); ?></p>
					</div>
				</div>

				<div class="form-group">
					<label for="email" class="control-label col-md-3 col-xs-12">Nama Lengkap : <strong class="text-red">*</strong></label>
					<div class="col-md-8">
						<input type="text" name="nama_lengkap" class="form-control" value="<?php echo $get->nama_lengkap; ?>">
						<p class="help-block"><?php echo form_error('nama_lengkap', '<small class="text-red">', '</small>'); ?></p>
					</div>
				</div>
		
				<div class="form-group">
					<label for="email" class="control-label col-md-3 col-xs-12">Alamat : <strong class="text-red">*</strong></label>
					<div class="col-md-8">
					  <textarea name="alamat"  placeholder="Ex : Jln. Raya Simpang Katis No. 141 RT. 05 Kel. Simpang Katis Kecamatan Simpang Katis Kabupaten Bangka Tengah" class="form-control"><?php echo $get->alamat;?></textarea>
		              <span class="help-block"><?php echo form_error('alamat', '<small class="text-red">', '</small>'); ?></span>
					</div>
				</div>

				<div class="form-group">
					<label for="email" class="control-label col-md-3 col-xs-12">Telepon/ No Hp : <strong class="text-red">*</strong></label>
					<div class="col-md-8">
						<input type="text" name="no_hp" class="form-control" value="<?php echo $get->no_hp; ?>">
						<p class="help-block"><?php echo form_error('no_hp', '<small class="text-red">', '</small>'); ?></p>
					</div>
				</div>

				<div class="form-group">
					<label for="email" class="control-label col-md-3 col-xs-12">Foto : <strong class="text-red">*</strong></label>
					<div class="col-md-8">
						<input type="file" name="foto" class="form-control">
						
					</div>
				</div>
				
			</div>

			<div class="box-footer with-border">
				<div class="col-md-4 col-xs-5">
					<a href="<?php echo site_url('administrator/admin') ?>" class="btn btn-app pull-right">
						<i class="ion ion-reply"></i> Kembali
					</a>
				</div>
				<div class="col-md-6 col-xs-6">
					<button type="submit" class="btn btn-app pull-right">
						<i class="fa fa-save"></i> Simpan
					</button>
				</div>
			</div>
			<div class="box-footer with-border">
					<small><strong class="text-red">*</strong>	Field wajib diisi!</small> <br>
					<small><strong class="text-blue">*</strong>	Field Optional</small>
			</div>
<?php  
// End Form
echo form_close();
?>
		</div>
	</div>
</div>