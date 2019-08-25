class Models.NewDiscription extends Models.ApplicationModel
  constructor: () ->

  @delete = (id) ->
    request = $.ajax(
              "/new_discriptions/#{id}",
              { 
                method: 'delete',
                headers:{
                  "Accept": "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript, */*; q=0.01"
                }
              }
    )