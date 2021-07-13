$(document).on('click', '#edit', function(){

  var id = $(this).attr('idcontent');

  $.get(bu+'Admin/bus/bus_delete/'+id, function(data){
    alert(data);
  });

});