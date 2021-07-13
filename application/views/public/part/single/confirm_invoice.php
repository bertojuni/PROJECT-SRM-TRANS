<style type="text/css">

.gs-ipt-wrapper
{
    width: 40%;
    height: 200px;
    margin: auto;
    margin-top: 3%;
}

</style>

<?php foreach($inv_data as $ivd){};?>

<!-- close jqContent -->
<div class="close-jqContent">
	X
</div>

<div class="gs-ipt-wrapper">

<form id="confForm">
    <input type="hidden" name="code" value="<?php echo $ivd->code_inv;?>">
  <br>
  <label class="ipt-title">Kode Tagihan</label>
  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
    <input id="title" type="text" class="form-control" name="coded" value="<?php echo $ivd->code_inv;?>" disabled>
  </div>
  <br>
  <label class="ipt-title">Silahkan untuk bukti pembayaran kirim melalui WHATSAPP</label>
  <div class="input-group">
    <i class="glyphicon glyphicon-tags"></i>
  </div>
  <br>
  <button type="submit" class="btn btn-success" style="width: 100%;">Kirim Konfirmasi</button>
</form>


</div>

<script src="<?php echo base_url();?>assets/hadmin/js/close.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/hadmin/js/save/page_save.js" type="text/javascript"></script>

<script type="text/javascript">

/**
 *
 *
 *  @package      Summernote text editor
 *  @autohr       Yuilius
 *
 */

$(document).ready(function() {
  $('#texte').summernote();

  // membuat placeholder summernote
  var string = 'Deskripsi Bus . . .';
  $('#texte').summernote('code', string);
});

</script>