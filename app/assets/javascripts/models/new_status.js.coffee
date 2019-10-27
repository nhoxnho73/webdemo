class Models.NewStatus extends Models.ApplicationModel
  constructor: () ->

  @delete = (id) ->
    request = $.ajax(
              "/new_statuses/#{id}",
              {
                method: 'delete',
                headers: {
                  "Accept": "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript, */*; q=0.01"
                }
              }

    )