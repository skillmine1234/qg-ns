$(document).ready(function(){
  if (!$('#ns_callback_include_hash').prop('checked')) {
    $("#ns_callback_hash_header_name").val('');
    $("#ns_callback_hash_algo").val('');
    $("#ns_callback_hash_key").val('');
    $("#ns_callback_hash_header_name").prop("readOnly",true);
    $("#ns_callback_hash_algo").prop("readOnly",true);
    $("#ns_callback_hash_key").prop("readOnly",true);
  }
  else {
    $("#ns_callback_hash_header_name").prop("readOnly",false);
    $("#ns_callback_hash_algo").val('SHA-256');
    $("#ns_callback_hash_algo").prop("readOnly",true);
    $("#ns_callback_hash_key").prop("readOnly",false);
  }

  $("#ns_callback_include_hash").on("click",function(){
    if (!$(this).prop('checked')) {
      $("#ns_callback_hash_header_name").val('');
      $("#ns_callback_hash_algo").val('');
      $("#ns_callback_hash_key").val('');
      $("#ns_callback_hash_header_name").prop("readOnly",true);
      $("#ns_callback_hash_algo").prop("readOnly",true);
      $("#ns_callback_hash_key").prop("readOnly",true);
    }
    else {
      $("#ns_callback_hash_header_name").prop("readOnly",false);
      $("#ns_callback_hash_algo").val('SHA-256');
      $("#ns_callback_hash_algo").prop("readOnly",true);
      $("#ns_callback_hash_key").prop("readOnly",false);
    }
  });
});