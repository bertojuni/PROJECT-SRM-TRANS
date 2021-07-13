// default load

$('.datalist').load(bu+'Admin/invoice/invoice_pending_view');

// fungsi tombol

// tombol web setting
$('.tp').on('click', function()
{

	// load
	$('.datalist').load(bu+'Admin/invoice/invoice_pending_view');

});

// tombol bank setting
$('.kt').on('click', function()
{

	// load
	$('.datalist').load(bu+'Admin/invoice/invoice_confirm_view');

});

// tombol menu setting
$('.ts').on('click', function(){

	// load
	$('.datalist').load(bu+'Admin/invoice/invoice_clear_view');

});


// tombol menu setting
$(document).on('click', '.tb', function(){

	// load
	$('.datalist').load(bu+'Admin/invoice/invoice_draff_view');

});

// membuat bank account
$(document).on('click', '.cnw', function(){

	$('#jqContent').load(bu+'Admin/setting/bank_setting_input');
	$('#jqContent').slideDown('400');

});

// menghapus data invoice
$(document).on('click', '#delete', function(){

	var id = $(this).attr('idbus');
	var c  = confirm('Apa anda yakin ingin menghapus tagihan ini ?')

	if(c == true)
	{
		$.get(bu+'Admin/invoice/invoice_delete/'+id, function(data){
			alert(data);
		});
	}

});

// save denda
$(document).on('submit', '#pForm', function(){

	$.ajax({

		url:bu+'Admin/invoice/invoice_save_penalty',
		type:'POST',
		data:new FormData(this),
		contentType:false,
		processData:false,
		success:function(data)
		{
			alert(data);
			window.location.href = window.location.href;
		}

	});

	return false;
	return false;

});
