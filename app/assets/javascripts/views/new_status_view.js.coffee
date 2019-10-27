
class Views.NewStatus extends Views.ApplicationView
  constructor: () ->

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
            request = Models.NewStatus.delete(id)
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