$(function () {
  $(document).on("click", ".delete", function () {
    var $ele = $(this).parent().parent();
    $.ajax({
      url: "/Admin/delete_ajax",
      type: "get",      
      data: {
        type: 2,
        id: $(this).attr("data-id"),
        type_p: $(this).attr("data-type")
      },
      success: function (data) {      
        $ele.fadeOut().remove();

      },
    });
  });

  $(document).on("click", ".xacnhan", function () {
    var $ele = $(this).parent().parent();
    $.ajax({
      url: "/Admin/delete_ajax",
      type: "get",    
      data: {
        type: 1,
        id: $(this).attr("data-id"),
        type_p: $(this).attr("data-type")
      },
      success: function (dataResult) {     
        location.reload();          
      }
    });
  });


  $(document).on("click", ".edit", function () {
    var $ele = $(this).parent().parent();
    $.ajax({
      url: "/Admin/e_Order",
      type: "get",
      data: {
        type: 1,
        id: $(this).attr("data-id"),
        type_p: $(this).attr("data-type")
      },
      success: function (dataResult) {
          location.reload();      
      }
    });
  });

  $(document).on("click", ".accept", function () {
    var $ele = $(this).parent().parent();
    $.ajax({
      url: "/Admin/e_Order",
      type: "get",
   
      data: {
        type: 2,
        id: $(this).attr("data-id"),
        type_p: $(this).attr("data-type")
      },
      success: function (dataResult) {
          location.reload();
      }
    });
  });

  $(document).on("click", ".tuchoi", function () {
    var id = $(this).attr("data-id");
    var type = $(this).attr("data-type");
    $('#id_d').val(id);
    $('#type_p').val(type);

  });

  $(document).on("click", "#tuchoi", function () {
    var $ele = $(this).parent().parent();
    $.ajax({
      url: "/Admin/delete_ajax",
      type: "get",
      
      data: {
        type: 2,
        id: $('#id_d').val(),
        type_p: $('#type_p').val()
      },
      success: function (dataResult) {
        var dataResult = JSON.parse(dataResult);
        if (dataResult.statusCode == 200) {
          $('#deny').modal('hide');
          location.reload();
        }
      }
    });
  });

});

