$("#discriptions").append("<%= j render 'item', discription: @discription %>")
$("#new_discription form").trigger("reset")
$("#new_discription").modal("hide")

$("#new_discription .flash-messages").html("")