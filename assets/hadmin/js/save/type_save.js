// menyimpan data tipe bus
$('#inputForm').on('submit', function(){

	$.ajax({

		url:bu+'Admin/type/type_save',
		type:'POST',
		data:new FormData(this),
		contentType:false,
		processData:false,
		success:function(data)
		{
			alert(data);
		}

	});

	return false;

});

// menyimpan data tipe bus
$('#editForm').on('submit', function(){

	$.ajax({

		url:bu+'Admin/type/save_type_edit',
		type:'POST',
		data:new FormData(this),
		contentType:false,
		processData:false,
		success:function(data)
		{
			alert(data);
		}

	});

	return false;

});

