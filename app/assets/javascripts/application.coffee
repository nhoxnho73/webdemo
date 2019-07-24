#= require rails-ujs
#= require plugins/jquery/jquery-3.2.1.min
#= require jquery_ujs
#= require activestorage
#= require turbolinks
#= require plugins/modernizr.custom
#= require plugins/jquery-ui/jquery-ui.min
#= require plugins/popper/umd/popper.min
#= require plugins/bootstrap/js/bootstrap.min
#= require plugins/bootstrap-daterangepicker/daterangepicker
#= require plugins/bootstrap-datepicker/js/bootstrap-datepicker
#= require plugins/jquery/jquery-easy
#= require plugins/jquery-unveil/jquery.unveil.min
#= require plugins/jquery-ios-list/jquery.ioslist.min
#= require plugins/jquery-actual/jquery.actual.min
#= require plugins/jquery-scrollbar/jquery.scrollbar.min
#= require plugins/select2/js/select2.full.min
#= require plugins/classie/classie
#= require plugins/switchery/js/switchery.min
#= require plugins/jquery-validation/js/jquery.validate.min
#= require plugins/sweetalert2/sweetalert2.all.min
#= require plugins/chartjs/chartjs.min
#= require pages/js/pages
#= require pages/core/js/scripts

#= require_tree .

$.ajaxSetup({
  headers: {
    'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
  }
})

