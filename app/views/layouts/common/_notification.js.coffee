
$('.page-content-wrapper').pgNotification({
  style: 'flip',
  message: '<%= message %>',
  position: 'top-right',
  timeout: 5000,
  type: '<%= type %>'
}).show()