
class Views.NewDiscription extends Views.ApplicationView
  constructor: () ->

  @edit = (caller) ->
    $("#edit_discription form").attr("action", $(caller).data("url"))
    $("#edit_discription form #new_status_id").val($(caller).data("discription-new-status-id"))
    $("#edit_discription form #discription").val($(caller).data("discription-discription"))
    $("#edit_discription").modal("show")
    $("#edit_discription .flash-messages").html("")

  @delete = (id) ->
    Swal(
      {
        title: 'Xóa nội dung?',
        type: 'warning',
        showCancelButton: true,
        cancelButtonText: "Hủy bỏ",
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Xác nhận xóa!',
        showLoaderOnConfirm: true,
        preConfirm: ->
          new Promise((resolve) ->
            request = Models.NewDiscription.delete(id)
            request.fail((data) ->
              Swal.fire({
                title: 'Thất bại!',
                text: "Nội dung chưa được xóa",
                type: "error",
                confirmButtonText: "Đóng",
                confirmButtonColor: '#d33',
              })
            )
          )
        },
        allowOutsideClick: () -> 
          !Swal.isLoading()
    ).then((result) ->
      unless (result.value) 
        Swal.fire({
                title: 'Hủy bỏ!',
                text: "Đã hủy bỏ xóa nội dung",
                type: 'warning',
                confirmButtonText: "Đóng",
                confirmButtonColor: '#d33',
        })
      )
