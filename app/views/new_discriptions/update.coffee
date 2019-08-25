$("#discription_id_<%= @discription.id %>").replaceWith("<%= j render 'item', discription: @discription %>")
$("#new_discription form").trigger("reset")
$("#edit_discription").modal("hide")

$("#edit_discription .flash-messages").html("")