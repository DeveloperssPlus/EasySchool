var formLayout = 'horizontal';
var formElement = 'input';
var radioLayout = 'vertical';
var radioRequired = '';
var checkboxLayout = 'vertical';
var checkboxRequired = '';
var buttonType = 'btn1';
var selectRequired = selectMultiple = selectSearch = '';
/**** WIDGETS ****/
var widgetTodoList = '<div class="panel"><div class="panel-header panel-controls"><h3><i class="icon-list"></i> <strong>Todo</strong> List</h3></div><div class="panel-content"><ul class="todo-list ui-sortable"><li class="high"><span class="span-check"><input id="task-1" type="checkbox" data-checkbox="icheckbox_square-blue" /><label for="task-1"></label></span><span class="todo-task">Send email to Bob Linch</span><div class="todo-date clearfix"><div class="completed-date"></div><div class="due-date">Due on <span class="due-date-span">15 December 2014</span></div></div><span class="todo-options pull-right"><a href="javascript:;" class="todo-delete"><i class="icons-office-52"></i></a></span><span class="todo-tags pull-right"><div class="label label-success">Work</div></span></li><li><span class="span-check"><input id="task-2" type="checkbox" data-checkbox="icheckbox_square-blue"/><label for="task-2"></label></span><span class="todo-task">Call datacenter for servers</span><div class="todo-date clearfix"><div class="completed-date"></div><div class="due-date">Due on <span class="due-date-span">7 January</span></div></div><span class="todo-options pull-right"><a href="javascript:;" class="todo-delete"><i class="icons-office-52"></i></a></span></li><li class="low"><span class="span-check"><input id="task-3" type="checkbox" data-checkbox="icheckbox_square-blue"/><label for="task-3"></label></span><span class="todo-task">Remove all unused icons</span><div class="todo-date clearfix"><div class="completed-date"></div><div class="due-date">Due on <span class="due-date-span">5 January</span></div></div><span class="todo-options pull-right"><a href="javascript:;" class="todo-delete"><i class="icons-office-52"></i></a></span></li><li class="medium"><span class="span-check"><input id="task-4" type="checkbox" data-checkbox="icheckbox_square-blue"/><label for="task-4"></label></span><span class="todo-task">Read my todo list</span><div class="todo-date clearfix"><div class="completed-date"></div><div class="due-date">Due on <span class="due-date-span">4 January</span></div></div><span class="todo-options pull-right"><a href="javascript:;" class="todo-delete"><i class="icons-office-52"></i></a></span><span class="todo-tags pull-right"><div class="label label-info">Tuesday</div></span></li><li><span class="span-check"><input id="task-6" type="checkbox" data-checkbox="icheckbox_square-blue"/><label for="task-6"></label></span><span class="todo-task">Have a breakfeast before 12</span><div class="todo-date clearfix"><div class="completed-date"></div><div class="due-date">Due on <span class="due-date-span">1 January</span></div></div><span class="todo-options pull-right"><a href="javascript:;" class="todo-delete"><i class="icons-office-52"></i></a></span></li></ul><div class="clearfix m-t-10"><div class="pull-left"><button type="button" class="btn btn-sm btn-default check-all-tasks">Check All Done</button></div><div class="pull-right"><button type="button" class="btn btn-sm btn-dark add-task">Add Task</button></div></div></div></div>';
var widgetNews = '<div class="panel"> <div class="panel-header"> <h3><i class="icon-list"></i> <strong>News</strong> List</h3> <div class="control-btn"> <span class="pull-right badge badge-primary">12</span> </div> </div> <div class="panel-content widget-news"> <div class="withScroll" data-height="400"> <a href="#" class="message-item media"> <div class="media"> <div class="media-body"> <div class="pull-left p-r-10"> <i class="icon-lock-open pull-left"></i> </div> <div> <small class="pull-right">28 Feb</small> <h4 class="c-dark">Reset your account password</h4> <p class="f-14 c-gray">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p> </div> </div> </div> </a> <a href="#" class="message-item media"> <div class="media"> <div class="media-body"> <div class="pull-left p-r-10"> <i class="icon-cloud-upload pull-left"></i> </div> <div> <small class="pull-right">27 Feb</small> <h4 class="c-dark">Check Dropbox</h4> <p class="f-14 c-gray">Hello Steve, I have added new files in your Dropbox in order to show you how to...</p> </div> </div> </div> </a> <a href="#" class="message-item media"> <div class="media"> <div class="media-body"> <div class="pull-left p-r-10"> <i class="icon-docs pull-left"></i> </div> <div> <small class="pull-right">27 Feb</small> <h4 class="c-dark">New document added</h4> <p class="f-14 c-gray">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p> </div> </div> </div> </a> <a href="#" class="message-item media"> <div class="media"> <div class="media-body"> <div class="pull-left p-r-10"> <i class="icon-present pull-left"></i> </div> <div> <small class="pull-right">26 Feb</small> <h4 class="c-dark">You receive a gift</h4> <p class="f-14 c-gray">Hello Steve, I have added new files in your Dropbox in order to show you how to...</p> </div> </div> </div> </a> <a href="#" class="message-item media"> <div class="media"> <div class="media-body"> <div class="pull-left p-r-10"> <i class="icon-call-in pull-left"></i> </div> <div> <small class="pull-right">25 Feb</small> <h4 class="c-dark">Call Alfred for business</h4> <p class="f-14 c-gray">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p> </div> </div> </div> </a> <a href="#" class="message-item media"> <div class="media"> <div class="media-body"> <div class="pull-left p-r-10"> <i class="icon-calendar pull-left"></i> </div> <div> <small class="pull-right">25 Feb</small> <h4 class="c-dark">Appointment at 8pm today</h4> <p class="f-14 c-gray">Hello Steve, I have added new files in your Dropbox in order to show you how to...</p> </div> </div> </div> </a> <a href="#" class="message-item media"> <div class="media"> <div class="media-body"> <div class="pull-left p-r-10"> <i class="icon-rocket pull-left"></i> </div> <div> <small class="pull-right">24 Feb</small> <h4 class="c-dark">Trip to Mars begin</h4> <p class="f-14 c-gray">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p> </div> </div> </div> </a> </div> </div> </div>';
var widgetTable = '<div class="panel"> <div class="panel-header panel-controls"> <h3><i class="icon-star"></i> Popular <strong>Domains</strong></h3> </div> <div class="panel-content widget-table"> <div class="withScroll" data-height="400"> <table class="table table-striped"> <thead> <tr> <th>Name</th> <th>Price</th> <th>Status</th> </tr> </thead> <tbody> <tr> <td>internet.com</td> <td><span class="l-through c-red">$29.99</span> <span class="p-l-10 c-green">$19.99</span></td> <td> <div class="badge badge-primary">on sale</div> </td> </tr> <tr> <td>online.com</td> <td><span class="c-primary">$19.99</span></td> <td> <div class="badge badge-success">approved</div> </td> </tr> <tr> <td>newsite.es</td> <td><span class="c-primary">$16.45</span></td> <td> <div class="badge badge-danger">pending</div> </td> </tr> <tr> <td>web.uk</td> <td><span class="c-primary">$15.00</span></td> <td> <div class="badge badge-warning badge-stock">out of stock</div> </td> </tr> <tr> <td>domain.com</td> <td><span class="c-primary">$18.40</span></td> <td> <div class="badge badge-default badge-sold">sold</div> </td> </tr> <tr> <td>mywebsite.com</td> <td><span class="l-through c-red">$22.99</span> <span class="p-l-10 c-green">$15.90</span></td> <td> <div class="badge badge-primary">on sale</div> </td> </tr> <tr> <td>intranet.com</td> <td><span class="l-through c-red">$27.99</span> <span class="p-l-10 c-green">$16.99</span></td> <td> <div class="badge badge-primary">on sale</div> </td> </tr> <tr> <td>hereiam.com</td> <td><span class="c-primary">$18.99</span></td> <td> <div class="badge badge-success">approved</div> </td> </tr> <tr> <td>johndoe.es</td> <td><span class="c-primary">$15.45</span></td> <td> <div class="badge badge-warning badge-stock">out of stock</div> </td> </tr> <tr> <td>skyblue.uk</td> <td><span class="c-primary">$14.00</span></td> <td> <div class="badge badge-danger">pending</div> </td> </tr> <tr> <td>morris.fr</td> <td><span class="c-primary">$17.40</span></td> <td> <div class="badge badge-default badge-sold">sold</div> </td> </tr> <tr> <td>justforfun.com</td> <td><span class="l-through c-red">$25.99</span> <span class="p-l-10 c-green">$18.90</span></td> <td> <div class="badge badge-primary">on sale</div> </td> </tr> </tbody> </table> </div> </div> </div>';
var widgetCounter = '<div class="panel"><div class="panel-content widget-info"><div class="row"><div class="left"><i class="fa fa-umbrella bg-green"></i></div><div class="right"><p class="number countup" data-from="0" data-to="52000">0</p><p class="text">New robots</p></div></div></div></div>';

var widgetProfile1 = '<div class="panel widget-member2"><div class="row"><div class="col-lg-2 col-xs-3"><img src="../../admin/assets/images/avatars/profil4.jpg" alt="profil 4" class="pull-left img-responsive"></div><div class="col-lg-10 col-xs-9"><div class="clearfix"><h3 class="m-t-0 member-name"><strong>John Snow</strong> <span class="member-job">Software Engineer</span></h3></div><div class="row"><div class="col-sm-12"><p><i class="fa fa-map-marker c-gray-light p-r-10"></i> Cebu Business Park, Cebu City, Philippines</p></div></div><div class="row"><div class="col-xlg-4 col-lg-6 col-sm-4"><p><i class="fa fa-skype c-gray-light p-r-10"></i> weno.camesong</p></div><div class="col-xlg-4 col-lg-6 col-sm-4 align-right"><p><i class="icon-envelope  c-gray-light p-r-10"></i> cameso@it.com</p></div><div class="col-xlg-4 col-lg-6 col-sm-4 align-right"><p><i class="icon-target c-gray-light p-r-10"></i> New York</p></div></div></div></div></div>';
var widgetProfile2 = '<div class="panel panel-default"><div class="panel-body p-10"><div class="text-center col-xs-4"><img src="../../admin/assets/images/avatars/avatar4_big.png" class="img-responsive" alt="avatar 4"></div><div class="clearfix col-xs-8"><h2 class="c-dark w-600">Winston Bowman</h2><p class="c-gray f-16">Photographer</p><p class="c-gray"><i class="fa fa-map-marker p-r-10"></i> Trade Business Park, Ohio</p></div></div><div class="panel-footer p-t-0 p-b-0"><div class="row"><div class="col-xs-4 bg-blue p-20"><div class="text-center m-b-10"><i class="f-24 icon-speech"></i></div><div class="text-center f-16">1568</div></div><div class="col-xs-4 bg-purple p-20"><div class="text-center m-b-10"><i class="f-24 icon-users"></i></div><div class="text-center f-16">866</div></div><div class="col-xs-4 bg-primary p-20"><div class="text-center m-b-10"><i class="f-24 fa icon-heart"></i></div><div class="text-center f-16">254</div></div></div></div></div>';
var widgetProfile3 = '<div class="panel panel-default hover-effect"><div class="panel-heading h-150 p-0"><img src="../../admin/assets/images/widgets/profil2.jpg" class="img-responsive hover-img" alt=""></div><div class="panel-body p-10"><div class="clearfix col-lg-6 col-md-12 col-sm-12"><h3 class="c-dark w-600 align-center">Anna Chain</h3><p class="c-gray f-16 align-center">Photographer</p></div><div class="col-lg-6 col-md-12 col-sm-12 p-t-20"><div class="col-xs-4 c-gray"><div class="text-center m-b-20"><i class="f-24 icon-speech"></i></div><div class="text-center">1568</div></div><div class="col-xs-4 c-gray"><div class="text-center m-b-20"><i class="f-24 icon-users"></i></div><div class="text-center">866</div></div><div class="col-xs-4 c-gray"><div class="text-center m-b-20"><i class="f-24 icon-heart c-red"></i></div><div class="text-center">254</div></div></div></div></div>';
var widgetProfile4 = '<div class="panel panel-default"><div class="panel-heading h-150 p-0"><img src="../../admin/assets/images/widgets/mountain.jpg" class="img-responsive" alt=""><div class="profil-name-heading text-center w-700"><div class="f-24">John Snow</div><div class="f-16">photographer</div></div></div><div class="panel-body p-10"><div class="clearfix col-xs-4"><div class="text-center f-32 w-700">1758</div><div class="text-center c-gray w-700">PHOTOS</div></div><div class="col-xs-4"><img class="widget-profil-img-center img-responsive" src="../../admin/assets/images/widgets/profil3.jpg" alt=""></div><div class="col-xs-4"><div class="text-center f-32 w-700">4557</div><div class="text-center c-gray w-700">FOLLOWERS</div></div></div></div>';



$(document).ready(function() {
    $('#import-page-builder').on('click', function(e) {
        e.preventDefault();
        createPageBuilder();
    });
    $('#no-page-builder').on('click', function(e) {
        e.preventDefault();
        $('.custom-page').fadeOut(200, function() {
            $('.custom-page').remove();
        });
    });

    handleMarginTop();
    handleTopbarFixed();

});

$(window).resize(function(){
    handleMarginTop();
});

function handleMarginTop(){
    var pageBuilderHeight = $('#page-builder').height();
    $('.page-builder').css('margin-top', pageBuilderHeight - 30);
}

function handlePageBuilder() {

    $('#builder').hide();
    if(typeof removeSidebarTop == 'function') {
        removeSidebarTop();
    }
    
    removeBoxedLayout();
    var menuContext =   '<div id="context-menu" class="context-menu dropdown clearfix">'+
                          '<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">'+
                           '<li class="dropdown-title">Panel</li>'+
                            '<li class="color-background"><a href="#" data-action="background"><i class="icon-pencil c-gray"></i> Change Background Color</a></li>'+
                            '<li class="edit-icon"><a href="#" data-action="icon"><i class="icon-star c-gray"></i> Edit Icon</a></li>'+
                            '<li class="remove-icon"><a href="#" data-action="remove-icon"><i class="icon-pencil c-gray"></i> Remove Icon</a></li>'+
                            '<li class="remove"><a href="#" data-action="remove"><i class="icon-ban c-gray"></i> Remove</a></li>'+
                          '</ul>'+
                        '</div>';
    $('.page-content').append(menuContext);
    var $contextMenu = $("#context-menu");

    /* Context Menu */
    $('.builder-wrapper').on('mousedown', '.panel-header h3, .panel-footer h3, .panel-content:not(.widget-info), i', function(){
          $('#context-menu .color-background, #context-menu .edit-icon, #context-menu .remove-icon').show();
          if($(this).hasClass('panel-content')){
            $('#context-menu .edit-icon').hide();
            $('#context-menu .remove-icon').hide();
          } 
          if(!$(this).find('i').length){
              $('#context-menu .remove-icon').hide();
          } 
          if($(this).is('i')){
              if($(this).parent().hasClass('form-sortable-btn')){
                  return;
              }
              $('#context-menu .edit-icon').show();
          } 
          $(this).contextmenu({
              target: '#context-menu',
              onItem: function (context, e) {
                  var action = $(e.target).data("action");
                  context.addClass('current-context');
                  if(action == 'background'){
                      $('#modal-background').modal('show');
                  } 
                  if(action == 'icon'){
                      $('#modal-icons').modal('show');
                  } 
                  if(action == 'remove-icon'){
                      context.find('i').remove();
                  } 
                  if(action == 'remove'){
                      $element = context;
                      if($element.hasClass('nav-parent')) $remove_txt = "Are you sure to remove this element?<br>";
                      else if($element.parent().hasClass('panel')) $remove_txt = "Are you sure this panel?";
                      else $remove_txt = "Are you sure to remove this element?";
                      bootbox.confirm($remove_txt, function(result) {
                          if(result === true){
                            $element.addClass("animated bounceOutLeft");
                            window.setTimeout(function () {
                              if($element.parent().hasClass('panel')){
                                  $element.parent().remove();
                              }
                              else{
                                  $element.remove();
                              }
                              
                            }, 300);
                          }
                      }); 
                  }     
              }
          });
    });

    /* Edit Icon */
    $('#modal-icons .modal-body').on('click', 'i', function(){
        $('#modal-icons .modal-body i').removeClass('active');
        var selectedIconClass = $(this).attr('class');
        if(selectedIconClass != ''){
            $(this).addClass('active');
        }
    });

    $('#modal-icons').on('click', '.save', function(){
        var selectedIconClass = $('#modal-icons .modal-body i.active').attr('class');
        if(selectedIconClass != ''){
          if($('.current-context').is('i')){
            $('.current-context').removeClass('fa').removeClass('glyphicon').removeClass('icon');
            $('.current-context').removeClass (function (index, css) {
              return (css.match (/(^|\s)fa-\S+/g) || []).join(' ');
            });
            $('.current-context').removeClass (function (index, css) {
              return (css.match (/(^|\s)line-\S+/g) || []).join(' ');
            });
            $('.current-context').removeClass (function (index, css) {
              return (css.match (/(^|\s)icon-\S+/g) || []).join(' ');
            });
            $('.current-context').removeClass (function (index, css) {
              return (css.match (/(^|\s)icons-\S+/g) || []).join(' ');
            });
            $('.current-context').addClass(selectedIconClass);
          }
          else{
            $('.current-context').prepend('<i class="'+selectedIconClass+'"></i>');
          }
          $('#modal-icons').modal('hide');
          $('.current-context').removeClass('current-context');
          $('#modal-icons .modal-body i').removeClass('active');
        }
    });

    /* Background Color */
    $('.colors-list li').click(function() {
        var self = $(this);
        var portlet_header = self.parent().parent().parent().prev();
        var portlet_footer = self.parent().parent().parent().next();
        self.addClass('active');
        self.siblings().removeClass('active');   
    });

    $('#modal-background').on('click', '#save-bg-color', function(){
        var selectedBgColor = $('#modal-background .modal-body li.active').attr('class');
        var bg_color = 'bg-' + selectedBgColor;
        if(selectedBgColor != ''){
          if($('.current-context ').parent().hasClass('panel-header') || $('.current-context ').parent().hasClass('panel-footer')){
              $('.current-context').parent().removeClass (function (index, css) {
                  return (css.match (/(^|\s)bg-\S+/g) || []).join(' ');
              });
              $('.current-context').parent().addClass(bg_color);
          }
          if($('.current-context ').hasClass('panel-content') || $('.current-context ').is('i')){
              $('.current-context').removeClass (function (index, css) {
                  return (css.match (/(^|\s)bg-\S+/g) || []).join(' ');
              });
              $('.current-context').addClass(bg_color);
          }
          $('#modal-background').modal('hide');
          $('.current-context').removeClass('current-context');
        }
    });

    $('#save-form-settings').on('click', function() {
        var formTitle = $('.form-title').val();
        if (formTitle != '') {
            $('.current-form').append('<h2> ' + formTitle + ' </h2>');
        }
        $('.form-title').val('');
        $('#form-settings').modal('hide');
        if (formLayout == 'horizontal') {
            $('.current-form').addClass('form-horizontal');
        }
        if (formElement == 'input') {
            if (formLayout == 'horizontal') {
                $('.current-form').append('<div class="form-group"><label class="col-sm-3 control-label">Label</label><div class="col-sm-9"><input class="form-control form-white" type="text" placeholder=""></div></div>');
            }
            else {
                ('.current-form').append('<div class="form-group"><label>Label</label><input class="form-control form-white" type="text" placeholder=""></div>');
            }
            $('.current-form').parent().find('.placeholder-content-area').remove();
            $('.current-form').attr('style', '');
        }
        else if (formElement == 'textarea') {
            if (formLayout == 'horizontal') {
                $('.current-form').append('<div class="form-group"><label class="col-sm-3 control-label">Label</label><div class="col-sm-9"><textarea class="form-control form-white" rows="5"></textarea></div></div>');
            }
            else {
                $('.current-form').append('<div class="form-group"><label>Label</label><textarea class="form-control form-white" rows="5"></textarea></div>');
            }
            $('.current-form').parent().find('.placeholder-content-area').remove();
            $('.current-form').attr('style', '');
        }
        else if (formElement == 'radio') {
            setTimeout(function() {
                radioRequired = '';
                $('#form-radio').modal('show');
            }, 300);
        }
        else if (formElement == 'checkbox') {
            setTimeout(function() {
                checkboxRequired = '';
                $('#form-checkbox').modal('show');
            }, 300);
        }
        else if (formElement == 'select') {
            setTimeout(function() {
                selectRequired = selectMultiple = selectSearch = '';
                $('#form-select').modal('show');
            }, 300);
        }
        else if (formElement == 'button') {
            setTimeout(function() {
                selectRequired = selectMultiple = selectSearch = '';
                $('#form-button').modal('show');
            }, 300);
        }
        else {
            $('.current-form').parent().find('.placeholder-content-area').remove();
            $('.current-form').css('display', '').removeClass('current-form');
        }
        handleSortableForm();
    });

    $('.close-modal').on('click', function() {
        $('.current-form').remove();
        $('.current-table').remove();
        $('.current-layout').remove();
    });
    $('#form-settings input').on('ifChecked', function(event) {
        formLayout = $(this).data('form-layout');
    });

    /**** FORM RADIO BUTTONS ****/
    $('#form-radio').on('show.bs.modal', function() {
        /* Fix Slider Issue in Modal */
        setTimeout(function() {
            $('.radio-slide').sliderIOS();
        }, 200);
    });
    $('#save-form-radio').on('click', function() {
        var radioLabel = $('.radio-label').val();
        var radioName = $('.radio-name').val();
        var numberRadio = $('.radio-slide').sliderIOS('getValue');
        radioLayout = $('#form-radio .radio-layout .iradio_minimal-blue.checked').find('input').data('radio-layout');
        var radioButtons = '';
        if (radioName == '') radioName = 'radio- name1';
        for (i = 1; i <= numberRadio; i++) {
            radioButtons += '<label><input type="radio" name="' + radioName + '" data-radio="iradio_minimal-blue" ' + radioRequired + '> Radio Button ' + i + ' </label>';
        }
        if (radioLabel == '') radioLabel = 'Radio Label';
        if ($('.current-form').hasClass('form-horizontal')) {
            if (radioLayout == 'vertical') $('.current-form').append('<div class="form-group"><div class="col-sm-3"><label>' + radioLabel + '</label></div><div class="col-sm-9"><div class="input-group"><div class="icheck-list">' + radioButtons + '</div></div></div></div>');
            if (radioLayout == 'horizontal') $('.current-form').append('<div class="form-group"><div class="col-sm-3"><label class="m-t-12">' + radioLabel + '</label></div><div class="col-sm-9"><div class="input-group"><div class="icheck-inline">' + radioButtons + '</div></div></div></div></div>');
        }
        else {
            if (radioLayout == 'vertical') $('.current-form').append('<div class="form-group"><p>' + radioLabel + '</p><div class="input-group"><div class="icheck-list">' + radioButtons + '</div></div></div>');
            if (radioLayout == 'horizontal') $('.current-form').append('<div class="form-group"><p>' + radioLabel + '</p><div class="input-group"><div class="icheck-inline">' + radioButtons + '</div></div></div></div>');
        }
        $('.current-form').iCheck({
            radioClass: 'iradio_minimal-blue'
        });
        $('.current-form').parent().find('.placeholder-content-area').remove();
        $('.current-form').css('display', '').removeClass('current-form');
        $('.radioLabel').val('');
        createIcheckEditor();
        handleSortableForm();
        $('#form-radio').modal('hide');
    });
    $('input.radio-required').on('ifChecked', function(event) {
        radioRequired = 'required';
    });

    /**** FORM CHECKBOX BUTTONS ****/
    /* Fix Slider Issue in Modal */
    $('#form-checkbox').on('show.bs.modal', function() {
        setTimeout(function() {
            $('.checkbox-slide').sliderIOS();
        }, 200);
    });
    $('#save-form-checkbox').on('click', function() {
        var checkboxLabel = $('.checkbox-label').val();
        var checkboxName = $('.checkbox-name').val();
        var numberCheckbox = $('.checkbox-slide').sliderIOS('getValue');
        checkboxLayout = $('#form-checkbox .checkbox-layout .iradio_minimal-blue.checked').find('input').data('checkbox-layout');
        var checkboxButtons = '';
        for (i = 1; i <= numberCheckbox; i++) {
            checkboxButtons += '<label><input type="checkbox" name="' + checkboxName + '" data-checkbox="icheckbox_square-blue" ' + checkboxRequired + '> Checkbox ' + i + '</label>';
        }
        if (checkboxLabel == '') checkboxLabel = 'Chekbox Label';
        if ($('.current-form').hasClass('form-horizontal')) {
            if (checkboxLayout == 'vertical') $('.current-form').append('<div class="form-group"><div class="col-sm-3"><label>' + checkboxLabel + '</label></div><div class="col-sm-9"><div class="input-group"><div class="icheck-list">' + checkboxButtons + '</div></div></div></div>');
            if (checkboxLayout == 'horizontal') $('.current-form').append('<div class="form-group"><div class="col-sm-3"><label class="m-t-12">' + checkboxLabel + '</label></div><div class="col-sm-9"><div class="input-group"><div class="icheck-inline">' + checkboxButtons + '</div></div></div></div></div>');
        }
        else {
            if (checkboxLayout == 'vertical') $('.current-form').append('<div class="form-group"><p>' + checkboxLabel + '</p><div class="input-group"><div class="icheck-list">' + checkboxButtons + '</div></div></div>');
            if (checkboxLayout == 'horizontal') $('.current-form').append('<div class="form-group"><p>' + checkboxLabel + '</p><div class="input-group"><div class="icheck-inline">' + checkboxButtons + '</div></div></div></div>');
        }
        $('.current-form').iCheck({
            checkboxClass: 'icheckbox_square-blue'
        });
        $('.current-form').parent().find('.placeholder-content-area').remove();
        $('.current-form').css('display', '').removeClass('current-form');
        $('.checkbox-label').val('');
        $('.checkbox-name').val('');
        handleSortableForm();
        $('#form-checkbox').modal('hide');
    });
    $('input.checkbox-required').on('ifChecked', function(event) {
        checkboxRequired = 'required';
    });

    /**** FORM SELECT INPUT ****/
    $('#save-form-select').on('click', function() {
        var selectOption = '';
        var selectLabel = $('.select-label').val();
        var selectName = $('.select-name').val();
        var selectOptions = $('textarea.select-options').val().split('\n');
        for (var i = 0; i < selectOptions.length; i++) {
            if (selectOptions[i] != '') selectOption += '<option>' + selectOptions[i] + '</option>';
        }
        if (selectLabel == '') selectLabel = 'Select Label';
        if ($('.current-form').hasClass('form-horizontal')) {
            $('.current-form').append('<div class="form-group"><div class="col-sm-3 m-t-5"><label>' + selectLabel + '</label></div><div class="col-sm-9"><div class="input-group width-100p"><select ' + selectMultiple + ' name="' + selectName + '" class="form-control form-white" ' + selectSearch + ' data-placeholder="">' + selectOption + '</select></div></div></div>');
        }
        else {
            $('.current-form').append('<div class="form-group"><label>' + selectLabel + '</label><select ' + selectMultiple + ' name="' + selectName + '" class="form-control form-white" ' + selectSearch + ' data-placeholder="">' + selectOption + '</select></div>');
        }
        $('.current-form').parent().find('.placeholder-content-area').remove();
        $('.current-form').css('display', '').removeClass('current-form');
        $('.select-label').val('');
        $('.select-options').val('');
        $('.select-name').val('');
        inputSelect();
        handleSortableForm();
        $('#form-select').modal('hide');
    });
    $('input.select-required').on('ifChecked', function(event) {
        selectRequired = 'required';
    });
    $('input.select-multiple').on('ifChecked', function(event) {
        selectMultiple = 'multiple';
    });
    $('input.select-search').on('ifChecked', function(event) {
        selectSearch = 'data-search="true"';
    });

    /**** FORM BUTTON ****/
    $('#save-form-button').on('click', function() {
        var buttonLabel = $('.button-label').val();
        if (buttonLabel != '') buttonLabel = '<label><strong>' + buttonLabel + '</strong></label>';
        buttonType = $('#form-button .button-type .iradio_minimal-blue.checked').find('input').data('button-type');
        button1Class = 'btn-' + $('.button1-class').select2("val");
        button1Style = 'btn-' + $('.button1-style').select2("val");
        if (button1Style == 'btn-default') button1Style = '';
        button1Name = $('.button1-name').val();
        button1Text = $('.button1-txt').val();
        if (button1Text == '') button1Text = 'Button';
        button2Class = 'btn-' + $('.button2-class').select2("val");
        button2Style = 'btn-' + $('.button2-style').select2("val");
        if (button2Style == 'btn-default') button2Style = '';
        button2Name = $('.button2-name').val();
        button2Text = $('.button2-txt').val();
        if (button2Text == '') button2Text = 'Button';
        buttonFileName = $('.button1-name').val();
        buttonFileText = $('.button1-txt').val();
        if ($('.current-form').hasClass('form-horizontal')) {
            if (buttonType == 'btn1') {
                $('.current-form').append('<div class="form-group"><div class="col-sm-3 m-t-5">' + buttonLabel + '</div><div class="col-sm-9"><button id="' + button1Name + '" name="' + button1Name + '" type="button" class="btn ' + button1Class + ' ' + button1Style + '">' + button1Text + '</button></div></div>');
            }
            if (buttonType == 'btn-file') {
                $('.current-form').append('<div class="form-group"><div class="col-sm-3 m-t-5">' + buttonLabel + '</div><div class="col-sm-9"><div class="fileinput fileinput-new input-group" data-provides="fileinput"><div class="form-control" data-trigger="fileinput"><i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div><span class="input-group-addon btn btn-default btn-file"><span class="fileinput-new">Choose...</span><span class="fileinput-exists">Change</span><input type="file" name="..."></span><a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a></div></div></div>');
            }
            if (buttonType == 'btn1-2') {
                $('.current-form').append('<div class="form-group"><div class="col-sm-3 m-t-5">' + buttonLabel + '</div><div class="col-sm-9"><button id="' + button1Name + '" name="' + button1Name + '" type="button" class="btn ' + button1Class + ' ' + button1Style + '">' + button1Text + '</button><button id="' + button2Name + '" name="' + button2Name + '" type="button" class="btn ' + button2Class + ' ' + button2Style + '">' + button2Text + '</button></div></div>');
            }
        }
        else {
            if (buttonType == 'btn1') {
                $('.current-form').append('<div class="form-group">' + buttonLabel + '<button id="' + button1Name + '" name="' + button1Name + '" type="button" class="btn ' + button1Class + ' ' + button1Style + '" id="top">' + button1Text + '</button></div>');
            }
            if (buttonType == 'btn-file') {
                $('.current-form').append('<div class="form-group">' + buttonLabel + '<div class="fileinput fileinput-new input-group" data-provides="fileinput"><div class="form-control" data-trigger="fileinput"><i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div><span class="input-group-addon btn btn-default btn-file"><span class="fileinput-new">Choose...</span><span class="fileinput-exists">Change</span><input type="file" name="..."></span><a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a></div></div>');
            }
            if (buttonType == 'btn1-2') {
                $('.current-form').append('<div class="form-group">' + buttonLabel + '<button id="' + button1Name + '" name="' + button1Name + '" type="button" class="btn ' + button1Class + ' ' + button1Style + '" id="top">' + button1Text + '</button><button id="' + button2Name + '" name="' + button2Name + '" type="button" class="btn ' + button2Class + ' ' + button2Style + '">' + button2Text + '</button></div>');
            }
        }
        $('.current-form').parent().find('.placeholder-content-area').remove();
        $('.current-form').css('display', '').removeClass('current-form');
        $('.button-label, .button1-name, .button1-txt, .button2-name, button2-txt, .file-button-label, .file-button-txt').val('');
        handleSortableForm();
        $('#form-button').modal('hide');
    });
    $('#form-button .button-type input').on('ifChecked', function(event) {
        $('.btn1-2, .btn-file').hide();
        buttonType = $(this).data('button-type');
        $('#form-button').find('.' + buttonType).show();
    });
    $('input').on('ifChecked', function(event) {
        $('.btn1-2, .btn-file').hide();
        buttonType = $(this).data('button-type');
        $('#form-button').find('.' + buttonType).show();
    });

    /**** TABLE ****/
    $('#table').on('show.bs.modal', function() {
        /* Fix Slider Issue in Modal */
        setTimeout(function() {
            $('.table-columns-slide, .table-rows-slide').sliderIOS();
        }, 200);
    });
    $('#save-table').on('click', function() {
        var tableHead = tableColumn = tableRow = '';
        var tableTitle = $('.table-title').val();
        tableStyle = 'table-' + $('.table-style').select2("val");
        if (tableStyle == 'table-default') tableStyle = '';
        if (tableTitle != '') tableTitle = '<h2><strong>' + tableTitle + '</strong></h2>';
        tableColumns = $('.table-columns-slide').sliderIOS('getValue');
        tableRows = $('.table-rows-slide').sliderIOS('getValue');
        for (var i = 0; i < tableColumns; i++) {
            tableHead += '<th>' + 'Head ' + i + '</th>';
        }
        for (var j = 0; j < tableRows; j++) {
            tableRow += '<tr>';
            for (var k = 0; k < tableColumns; k++) {
                tableRow += '<td>' + 'Row ' + k + '</td>';
            }
            tableRow += '</tr>';
        }
        $('.current-table').before(tableTitle);
        $('.current-table').addClass(tableStyle);
        $('.current-table').append('<thead><tr>' + tableHead + '</tr></thead><tbody>' + tableRow + '</tbody>');
        if($('.current-table').hasClass('table-dynamic')){
          tableDynamic();
        }
        $('.current-table').css('display', '').removeClass('current-table');
        $('.table-title').val('');
        $('#table').modal('hide');
    });

    /**** USER PROFILE WIDGET ****/
    $('#modal-user-profile').on('click', '.user-profile-img', function(){
        $('#modal-user-profile .user-profile-img').removeClass('active');
        $(this).addClass('active');
    });

    $('#modal-user-profile').on('click', '#save-profile', function(){
        profileWidgetLayout = $('#modal-user-profile .user-profile-img.active').data('profile-widget');
        if(profileWidgetLayout == 'profile1')  $('.current-context').append(widgetProfile1);
        if(profileWidgetLayout == 'profile2')  $('.current-context').append(widgetProfile2);
        if(profileWidgetLayout == 'profile3')  $('.current-context').append(widgetProfile3);
        if(profileWidgetLayout == 'profile4')  $('.current-context').append(widgetProfile4);
        $('.current-context').find('.panel').unwrap();

        $('#modal-user-profile').modal('hide');
    });

    /**** CUSTOM LAYOUT ****/
    $('#custom-layout').on('show.bs.modal', function() {
        if($('#num-columns').hasClass('slider')){
            setTimeout(function() {
                $('#num-columns').on('slide', function(ev) {
                    numColumns = $('#num-columns').sliderIOS('getValue');
                    if (numColumns == 1) valueColumns = '12/12';
                    if (numColumns == 2) valueColumns = '6/12_6/12';
                    if (numColumns == 3) valueColumns = '4/12_4/12_4/12';
                    if (numColumns == 4) valueColumns = '3/12_3/12_3/12_3/12';
                    if (numColumns == 5) valueColumns = '3/12_3/12_2/12_2/12_2/12';
                    if (numColumns == 6) valueColumns = '2/12_2/12_2/12_2/12_2/12_2/12';
                    if (numColumns == 7) valueColumns = '2/12_2/12_2/12_2/12_2/12_1/12_1/12';
                    if (numColumns == 8) valueColumns = '2/12_2/12_2/12_2/12_1/12_1/12_1/12_1/12';
                    if (numColumns == 9) valueColumns = '2/12_2/12_2/12_1/12_1/12_1/12_1/12_1/12_1/12';
                    if (numColumns == 10) valueColumns = '2/12_2/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12';
                    if (numColumns == 11) valueColumns = '2/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12';
                    if (numColumns == 12) valueColumns = '1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12';
                    handleNumberColumns(valueColumns);
                    $('.value-columns').val(valueColumns);
                });
                handleNumberColumns('4/12_4/12_4/12');
                
            }, 200);

        }
        else {
            setTimeout(function() {
                $('#num-columns').sliderIOS().on('slide', function(ev) {
                    numColumns = $('#num-columns').sliderIOS('getValue');
                    if (numColumns == 1) valueColumns = '12/12';
                    if (numColumns == 2) valueColumns = '6/12_6/12';
                    if (numColumns == 3) valueColumns = '4/12_4/12_4/12';
                    if (numColumns == 4) valueColumns = '3/12_3/12_3/12_3/12';
                    if (numColumns == 5) valueColumns = '3/12_3/12_2/12_2/12_2/12';
                    if (numColumns == 6) valueColumns = '2/12_2/12_2/12_2/12_2/12_2/12';
                    if (numColumns == 7) valueColumns = '2/12_2/12_2/12_2/12_2/12_1/12_1/12';
                    if (numColumns == 8) valueColumns = '2/12_2/12_2/12_2/12_1/12_1/12_1/12_1/12';
                    if (numColumns == 9) valueColumns = '2/12_2/12_2/12_1/12_1/12_1/12_1/12_1/12_1/12';
                    if (numColumns == 10) valueColumns = '2/12_2/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12';
                    if (numColumns == 11) valueColumns = '2/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12';
                    if (numColumns == 12) valueColumns = '1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12_1/12';
                    handleNumberColumns(valueColumns);
                    $('.value-columns').val(valueColumns);
                });
                handleNumberColumns('4/12_4/12_4/12');  
            }, 200);
        } 
    });
    function handleNumberColumns(valueColumns) {
        var defaults = [];
        // 12-col grid system
        defaults[12] = [];
        defaults[12][2] = [0, 6, 12];
        defaults[12][3] = [0, 4, 8, 12];
        defaults[12][4] = [0, 3, 6, 9, 12];
        defaults[12][5] = [0, 2, 4, 8, 10, 12];
        defaults[12][6] = [0, 2, 4, 5, 8, 10, 12];
        defaults[12][7] = [0, 2, 4, 8, 10, 11, 12];
        defaults[12][8] = [0, 2, 4, 6, 7, 8, 9, 12];
        defaults[12][9] = [0, 2, 4, 5, 6, 7, 8, 10, 12];
        // Set current value
        var grid = 12, // Need to set this before finding value from input -  12
            columns = 1,
            total = 0,
            fraction = '',
            numerator = 12,
            denominator = 0,
            current = valueColumns,
            values = [];
        if (current) {
            current = current.split('_');
            columns = current.length;
            for (var i = 0; i <= columns; i++) {
                if (i === 0) {
                    values[i] = 0;
                }
                else if (i == columns) {
                    values[i] = grid;
                }
                else {
                    fraction = current[i - 1].split('/');
                    total += (grid * fraction[0]) / fraction[1];
                    values[i] = total;
                }
            }
        }
        else {
            values = defaults[12][5];
        }
        $("#slider-custom-columns").slider({
            range: 'max',
            min: 0,
            max: grid,
            step: 1,
            values: values,
            slide: function(event, ui) {
                var index = $(ui.handle).index(),
                    values = ui.values,
                    count = values.length;
                // First and last can't be moved
                if (index == 1 || index == count) {
                    return false;
                }
                var $container = $(ui.handle).closest('.slider-wrap'),
                    $option = $container.find('input[name="col[widths]"]'),
                    current_val = ui.value,
                    next_val = values[index],
                    prev_val = values[index - 2],
                    next_col = 0,
                    prev_col = 0,
                    prev_col_fraction = '',
                    next_col_fraction = '',
                    next_numerator = 0,
                    prev_numerator = 0,
                    prev_final = '',
                    final = '';
                if (current_val <= prev_val || current_val >= next_val) {
                    return false;
                }
                prev_numerator = current_val - prev_val;
                next_numerator = next_val - current_val;
                prev_col = index - 1;
                next_col = index;
                prev_col_fraction = prev_numerator.toString() + '/' + grid.toString();
                next_col_fraction = next_numerator.toString() + '/' + grid.toString();
                $container.find('input[name="col[' + prev_col + ']"]').val(prev_col_fraction);
                $container.find('input[name="col[' + next_col + ']"]').val(next_col_fraction);
                prev_final = $container.find('input[name="col[widths]"]').val();
                prev_final = prev_final.split('_');
                for (var i = 1; i <= prev_final.length; i++) {
                    if (i == prev_col) {
                        final += prev_col_fraction;
                    }
                    else if (i == next_col) {
                        final += next_col_fraction;
                    }
                    else {
                        final += prev_final[i - 1];
                    }
                    if (i != prev_final.length) {
                        final += '_';
                    }
                }
                $option.val(final);
            }
        }).slider("pips", {
            rest: "label"
        });
    }

    $('#save-custom-layout').on('click', function() {
        var numCustomColumns = $('.value-columns').val();
        var customLayoutHtml = '<div class="placeholder-container"><div class="placeholder">';
        values = [];
        grid = 12;
        total = 0;
        current = numCustomColumns.split('_');
        columns = current.length;
        for (var i = 0; i <= columns; i++) {
            if (i === 0) {
                values[i] = 0;
            }
            else if (i == columns) {
                values[i] = grid;
                fraction = current[i - 1].split('/');
                customLayoutHtml += '<div class="placeholder-content col-md-' + fraction[0] + '"><div class="placeholder-content-area"></div></div>';
            }
            else {
                fraction = current[i - 1].split('/');
                //total += (grid * fraction[0]) / fraction[1];
                values[i] = current[i - 1].split('/');
                customLayoutHtml += '<div class="placeholder-content col-md-' + fraction[0] + '"><div class="placeholder-content-area"></div></div>';
            }
        }
        customLayoutHtml += '</div><div class="placeholder-handle"><div class="handle-move"><i class="fa fa-bars"></i></div><div class="handle-remove"><i class="fa fa-times"></i></div><div class="handle-options"><i class="fa fa-cog"></i></div></div></div>';
        $('.current-layout').addClass('row').removeClass('current-layout').append(customLayoutHtml);
        handleDroppable();
        $('#custom-layout').modal('hide');
    });


    $('.builder-wrapper').on('click', '.placeholder p', function() {
        removeEditor($(this));
        createEditor($(this));
    });
    $('.builder-wrapper').on('click', '.placeholder h1, .placeholder h2, .placeholder h3,.placeholder h4, label,.placeholder button,.placeholder th,.placeholder td,.placeholder li,.placeholder li a,.placeholder .title, .placeholder .number, .placeholder small', function() {
        /* Prevent to remove editor if toolbar button is clicked */
        if (!$(this).parent().parent().hasClass('note-toolbar')) {
            removeEditor($(this));
            createEditorAirMode($(this));
        }
    });
    $('.footer').on('click', 'p', function() {
        removeEditor($(this));
        createEditorAirMode($(this));
    });
    $('.builder-wrapper').on('click', '.placeholder .select-image', function() {
        addImage();
    });
    $('.builder-wrapper').on('click', 'a', function(e) {
        e.preventDefault();
        currentHref = $(this).attr('href');
        if(currentHref != '#'){
            generateNotif('<div class="alert alert-dark media fade in" style="margin-bottom:0;margin-top:10px"><p><i class="icon-bulb p-r-5 f-16"></i> Links are disabled in builder to prevent you loosing content.</p></div>');
        }
    });
    $('body').on('click', '.note-insert', function() {
        $('.note-link-dialog input').iCheck({
            checkboxClass: 'icheckbox_square-blue'
        });
    });
    handleDroppable();
    handleSortable();
    handleSortableForm();
    draggableLayout();
    draggableElement();
    handleRemove();
    createBuilderNotif();
}

/* Drop Elements */
function handleDroppable() {
    $(".placeholder-content").droppable({
        over: function(event, ui) {
            /* We add a Class to element that is hover a valid container */
            if (!ui.draggable.hasClass('layout')) {
                $(this).addClass('drop-hover');
            }
        },
        out: function(event, ui) {
            $(this).removeClass('drop-hover');
        },
        drop: function(event, ui) {
            var $this = $(this);
            ui.draggable.removeClass('ui-draggable');
            if (ui.draggable.prop('class') == 'element') {
                $this.find('.placeholder-content-area').remove();
                if (ui.draggable.data('element') == 'paragraph') {
                    $this.append('<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
                }
                if (ui.draggable.data('element') == 'title-h1') {
                    $this.append('<h1 class="summernote" data-airmode="true">I am a big Title</h1>');
                }
                if (ui.draggable.data('element') == 'title-h2') {
                    $this.append('<h2 class="summernote" data-airmode="true">I am a medium Title</h2>');
                }
                if (ui.draggable.data('element') == 'title-h3') {
                    $this.append('<h3 class="summernote" data-airmode="true">I am a small Title</h3>');
                }
                if (ui.draggable.data('element') == 'image') {
                    $this.append('<div class="fileinput fileinput-new" data-provides="fileinput"><div class="fileinput-new thumbnail"><img data-src="" src="images/add-picture.jpg" class="img-responsive"></div><div class="fileinput-preview fileinput-exists thumbnail"></div><div class="text-center"><span class="btn btn-default btn-file"><span class="fileinput-new">Select image...</span><span class="fileinput-exists">Change</span><input type="file" name="..."></span><a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a></div></div>');
                }
                if (!$this.parent().hasClass('active')) {
                    if ($this.children().hasClass('select-image')) {
                        $this.parent().find('.placeholder-content-area').height($this.height() - 14);
                    }
                    else {
                        $this.parent().find('.placeholder-content-area').height($this.height());
                    }
                }
            }
            if (ui.draggable.prop('class') == 'portlet') {
                $this.find('.placeholder-content-area').remove();
                if (ui.draggable.data('portlet') == 'basic') {
                    $this.append('<div class="panel"><div class="panel-content"><h1><strong>Simple</strong> Portlets</h1><p>Example of panel with no header and footer.<br>You can edit content by clicking on text.</p></div></div>');
                }
                if (ui.draggable.data('portlet') == 'header') {
                    $this.append('<div class="panel"><div class="panel-header bg-primary"><h3>Portlet <strong>Title</strong></h3></div><div class="panel-content"><p>Example of portlet with header.<br>You can edit content by clicking on text.</p></div></div>');
                }
                if (ui.draggable.data('portlet') == 'footer-txt') {
                    $this.append('<div class="panel"><div class="panel-content"><h1>Just footer, no header.</h1><p class="m-t-40">Like for header, you can add color to footer<br>You can edit content by clicking on text.</p></div><div class="panel-footer bg-dark"><h3>Portlet <strong>Footer</strong></h3></div></div>');
                }
                if (ui.draggable.data('portlet') == 'footer-btn') {
                    $this.append('<div class="panel"><div class="panel-content"><h1>Just footer, no header.</h1><p class="m-t-40">Like for header, you can add color to footer<br>You can edit content by clicking on text.</p></div><div class="panel-footer clearfix"><div class="pull-right"><button type="button" class="btn btn-white m-r-10">Cancel</button><button type="button" class="btn btn-success">Submit</button></div></div>');
                }
                if (ui.draggable.data('portlet') == 'header-footer') {
                    $this.append('<div class="panel"><div class="panel-header"><h3>Portlet <strong>Header</strong></h3></div><div class="panel-content"><p>Example of portlet with header and footer. You can edit content by clicking on text.</p></div><div class="panel-footer"><h3>Portlet <strong>Footer</strong></h3></div></div>');
                }
            }
            if (ui.draggable.prop('class') == 'form') {
                formElement = null;
                formElement = ui.draggable.data('form');
                // $this.find('.placeholder-content-area').remove();
                if ($this.find('form').length == 0) {
                    $('#form-settings').modal('show');
                    $('.current-form').removeClass('current-form');
                    $this.append('<form class="current-form" role="form" method="" action="" style="display:none"></form>');
                }
                else {
                    $this.find('form').addClass('current-form');
                    if (formElement == 'input') {
                        if ($this.find('form').hasClass('form-horizontal')) {
                            $this.find('form').append('<div class="form-group"><label class="col-sm-3 control-label">Label</label><div class="col-sm-9"><input class="form-control form-white" type="text" placeholder=""></div></div>');
                        }
                        else {
                            $this.find('form').append('<div class="form-group"><label>Label</label><input class="form-control" type="text" placeholder=""></div>');
                        }
                    }
                    if (formElement == 'textarea') {
                        if ($this.find('form').hasClass('form-horizontal')) {
                            $this.find('form').append('<div class="form-group"><label class="col-sm-3 control-label">Label</label><div class="col-sm-9"><textarea class="form-control form-white" rows="5"></textarea></div></div>');
                        }
                        else {
                            $this.find('form').append('<div class="form-group"><label>Label</label><textarea class="form-control form-white" rows="5"></textarea></div>');
                        }
                    }
                    if (formElement == 'radio') {
                        $('#form-radio').modal('show');
                    }
                    if (formElement == 'checkbox') {
                        $('#form-checkbox').modal('show');
                    }
                    if (formElement == 'select') {
                        $('#form-select').modal('show');
                    }
                    if (formElement == 'button') {
                        $('#form-button').modal('show');
                    }
                    handleSortableForm();
                }
            }
            if (ui.draggable.prop('class') == 'build-table') {
                currentTable = ui.draggable.data('table');
                $this.find('.placeholder-content-area').remove();
                if (currentTable == 'table') {
                  $this.append('<table class="current-table table" style="display:none"></table>');
                }
                if (currentTable == 'table-dynamic') {
                  $this.append('<table class="current-table table table-dynamic" style="display:none"></table>');
                } 
                $('#table').modal('show');
            }
            if (ui.draggable.prop('class') == 'build-widget') {
                currentWidget = ui.draggable.data('widget');
                if (currentWidget == 'todo') {
                    if ($('.builder-wrapper .todo-list').length) {
                        alert('You can only add one todo list per page');
                        $this.removeClass('drop-hover');
                        return;
                    }
                    $this.find('.placeholder-content-area').remove();
                    $this.append(widgetTodoList);
                    $this.iCheck({
                        checkboxClass: 'icheckbox_square-blue'
                    });
                    handleTodoList();
                }
                if (currentWidget == 'weather') {
                    if ($('.builder-wrapper .widget-weather').length) {
                        alert('You can only add one weather widget per page');
                        $this.removeClass('drop-hover');
                        return;
                    }
                    $this.find('.placeholder-content-area').remove();
                    $this.append('<div class="panel widget-weather"></div>');
                    widgetWeather();
                }
                if (currentWidget == 'calendar') {
                    $this.find('.placeholder-content-area').remove();
                    $this.append('<div class="widget widget_calendar bg-dark"><div class="multidatepicker"></div></div>');
                    multiDatesPicker();
                }
                if (currentWidget == 'news') {
                    $this.find('.placeholder-content-area').remove();
                    $this.append(widgetNews);
                    customScroll();
                }
                if (currentWidget == 'table') {
                    $this.find('.placeholder-content-area').remove();
                    $this.append(widgetTable);
                    customScroll();
                }
                if (currentWidget == 'counter') {
                    $this.find('.placeholder-content-area').remove();
                    $this.append(widgetCounter);
                    animateNumber();
                }
                if (currentWidget == 'user-profile') {
                    $this.find('.placeholder-content-area').addClass('current-context');
                    $('#modal-user-profile').modal('show');

                }
            }
            $this.removeClass('drop-hover');
            $this.parent().parent().addClass('active');
        }
    });
}

/* Handle Sortable Elements */
function handleSortable() {
    $(".builder-wrapper").sortable({
        items: "> .row",
        handle: ".placeholder-handle",
        axis: "y",
        dropOnEmpty: true,
        forcePlaceholderSize: true,
        revert: false,
        receive: function(event, ui) {
            var html = [];
            var $this = $(this);
            ui.item.removeClass('ui-draggable');
            if (ui.item.prop('class') == 'layout') {
                if (ui.item.data('layout') == 'one-column') {
                    $(this).children().not(".row").replaceWith('<div class="row"><div class="placeholder-container"><div class="placeholder"><div class="placeholder-content col-md-12"><div class="placeholder-content-area"></div></div></div><div class="placeholder-handle"><div class="handle-move"><i class="fa fa-bars"></i></div><div class="handle-remove"><i class="fa fa-times"></i></div></div></div></div>');
                }
                if (ui.item.data('layout') == 'two-column-50') {
                    $(this).children().not(".row").replaceWith('<div class="row"><div class="placeholder-container"><div class="placeholder"><div class="placeholder-content col-md-6"><div class="placeholder-content-area"></div></div><div class="placeholder-content col-md-6"><div class="placeholder-content-area"></div></div></div><div class="placeholder-handle"><div class="handle-move"><i class="fa fa-bars"></i></div><div class="handle-remove"><i class="fa fa-times"></i></div></div></div></div>');
                }
                if (ui.item.data('layout') == 'two-column-33') {
                    $(this).children().not(".row").replaceWith('<div class="row"><div class="placeholder-container"><div class="placeholder"><div class="placeholder-content col-md-4"><div class="placeholder-content-area"></div></div><div class="placeholder-content col-md-8"><div class="placeholder-content-area"></div></div></div><div class="placeholder-handle"><div class="handle-move"><i class="fa fa-bars"></i></div><div class="handle-remove"><i class="fa fa-times"></i></div><div class="handle-options"><i class="fa fa-cog"></i></div></div></div></div>');
                }
                if (ui.item.data('layout') == 'two-column-66') {
                    $(this).children().not(".row").replaceWith('<div class="row"><div class="placeholder-container"><div class="placeholder"><div class="placeholder-content col-md-8"><div class="placeholder-content-area"></div></div><div class="placeholder-content col-md-4"><div class="placeholder-content-area"></div></div></div><div class="placeholder-handle"><div class="handle-move"><i class="fa fa-bars"></i></div><div class="handle-remove"><i class="fa fa-times"></i></div><div class="handle-options"><i class="fa fa-cog"></i></div></div></div></div>');
                }
                if (ui.item.data('layout') == 'three-column-33') {
                    $(this).children().not(".row").replaceWith('<div class="row"><div class="placeholder-container"><div class="placeholder"><div class="placeholder-content col-md-4"><div class="placeholder-content-area"></div></div><div class="placeholder-content col-md-4"><div class="placeholder-content-area"></div></div><div class="placeholder-content col-md-4"><div class="placeholder-content-area"></div></div></div><div class="placeholder-handle"><div class="handle-move"><i class="fa fa-bars"></i></div><div class="handle-remove"><i class="fa fa-times"></i></div></div></div></div>');
                }
                if (ui.item.data('layout') == 'three-column-25') {
                    $(this).children().not(".row").replaceWith('<div class="row"><div class="placeholder-container"><div class="placeholder"><div class="placeholder-content col-md-3"><div class="placeholder-content-area"></div></div><div class="placeholder-content col-md-6"><div class="placeholder-content-area"></div></div><div class="placeholder-content col-md-3"><div class="placeholder-content-area"></div></div></div><div class="placeholder-handle"><div class="handle-move"><i class="fa fa-bars"></i></div><div class="handle-remove"><i class="fa fa-times"></i></div></div></div></div>');
                }
                if (ui.item.data('layout') == 'four-column') {
                    $(this).children().not(".row").replaceWith('<div class="row"><div class="placeholder-container"><div class="placeholder"><div class="placeholder-content col-md-3"><div class="placeholder-content-area"></div></div><div class="placeholder-content col-md-3"><div class="placeholder-content-area"></div></div><div class="placeholder-content col-md-3"><div class="placeholder-content-area"></div></div><div class="placeholder-content col-md-3"><div class="placeholder-content-area"></div></div></div><div class="placeholder-handle"><div class="handle-move"><i class="fa fa-bars"></i></div><div class="handle-remove"><i class="fa fa-times"></i></div></div></div></div>');
                }
                if (ui.item.data('layout') == 'custom') {
                    // $this.append('<div class="current-layout"></div>');
                    $('#custom-layout').modal('show');
                    $(this).children().not(".row").replaceWith('<div class="current-layout"></div>');
                }
            }
            handleDroppable();
        }
    });
}

/* Handle Sortable Form Elements */
function handleSortableForm(){
    $(".builder-wrapper .form-group").each(function(){
        $(this).remove('.form-sortable-btn');
        $(this).append('<div class="form-sortable-btn"><i class="icon-cursor-move"></i></div>');
    });
    $(".builder-wrapper form").sortable({
        connectWith: ".form-group",
        handle: ".form-sortable-btn",
        opacity: 0.5,
        axis: "y",
        dropOnEmpty: true,
        forcePlaceholderSize: true,
        receive: function(event, ui) {
            $("body").trigger("resize")
        }
    });
}

function draggableLayout() {
    $('#page-builder .layout').draggable({
        helper: function() {
            return $('<div class="arrow_box"><p>You can drop it here!</p></div>');
        },
        appendTo: 'body',
        connectToSortable: '.builder-wrapper'
    });
}

function draggableElement() {
    $('#page-builder .element, #page-builder .portlet, #page-builder .form, #page-builder .build-table, #page-builder .build-widget').draggable({
        helper: function() {
            currentElement = $(this).html();
            return $('<div style="padding:20px;height: 100px; border:1px solid #E6E6E6;border-radius:3px;width: 300px; background: #fff; box-shadow: 3px 3px 2px rgba(0,0,0,0.1); text-align: center; line-height: 30px; font-size: 16px; color: #121212">' + currentElement + '</div>');
        },
        appendTo: 'body'
    });
}

function createEditor(element) {
    element.addClass('editing');
    element.summernote({
        height: 'auto',
        airMode: false,
        toolbar: [
            ["style", ["style"]],
            ["style", ["bold", "italic", "underline", "clear"]],
            ["fontsize", ["fontsize"]],
            ["color", ["color"]],
            ["para", ["ul", "ol", "paragraph"]],
            ["height", ["height"]],
            ['insert', ['picture']]
        ]
    });
}

function createEditorAirMode(element) {
    element.addClass('editing');
    element.summernote({
        height: 300,
        airMode: true,
        airPopover: [
            ["style", ["style"]],
            ['color', ['color']],
            ['font', ['bold', 'underline', 'clear']],
            ['para', ['ul', 'paragraph']]
          ]
    });
}

function removeEditor(element) {
    $('.placeholder p, .placeholder h1, .placeholder h2, .placeholder h2, .placeholder h3, .placeholder label, .placeholder button, .placeholder th, .placeholder td, .placeholder li, .placeholder li a').removeClass('editing');
    $(this).addClass('editing');
    $('.placeholder p, .placeholder h1, .placeholder h2, .placeholder h2, .placeholder h3, .placeholder label, .placeholder button, .placeholder th, .placeholder td, .placeholder li, .placeholder li a').each(function() {
        if (!$(this).hasClass('editing')) {
            $(this).destroy();
        }
    });
    $('.footer p').each(function() {
        $(this).destroy();
    });
}

function createIcheckEditor() {
    $('.placeholder input').on('ifChanged', function() {
        $(this).parent().parent().parent().find('label').destroy();
        $('.editing').removeClass('editing');
        createEditorAirMode($(this).parent().parent());
    });
}

function handleRemove() {
    $('.page-content').on('click', '.handle-remove', function() {
        currentElement = $(this).parent().parent();
        bootbox.confirm('Are you sure you want to remove this section?', function(result) {
            if (result === true) {
                currentElement.addClass("animated bounceOutRight");
                window.setTimeout(function() {
                    currentElement.remove();
                }, 300);
            }
        });
    });
}

function createPageBuilder() {
    var contentPageBuider = '<div id="page-builder" class="bg-primary"> <div class="tabs tabs-linetriangle"> <ul class="nav nav-tabs"> <li class="width-16p active"><a href="#layout" data-toggle="tab"><span class="text-center">Layout</span></a></li> <li class="width-16p"><a href="#portlets" data-toggle="tab"><span class="text-center">Panels</span></a></li> <li class="width-16p"><a href="#text" data-toggle="tab"><span class="text-center">Text &amp; Images</span></a></li> <li class="width-16p"><a href="#forms" data-toggle="tab"><span class="text-center">Forms</span></a></li> <li class="width-16p"><a href="#tables" data-toggle="tab"><span class="text-center">Tables</span></a></li> <li class="width-16p"><a href="#widgets" data-toggle="tab"><span class="text-center">Widgets</span></a></li> </ul> <div class="tab-content clearfix"> <div class="tab-pane fade in active" id="layout"> <div data-layout="one-column" class="layout"> <p><strong>1 column</strong></p> <p>100%</p> </div> <div data-layout="two-column-50" class="layout"> <p><strong>2 columns</strong></p> <p>2 x 50%</p> </div> <div data-layout="two-column-33" class="layout"> <p><strong>2 columns</strong></p> <p>33% + 66%</p> </div> <div data-layout="two-column-66" class="layout"> <p><strong>2 columns</strong></p> <p>66% + 33%</p> </div> <div data-layout="three-column-33" class="layout"> <p><strong>3 columns</strong></p> <p>3x 33%</p> </div> <div data-layout="three-column-25" class="layout"> <p><strong>3 columns</strong></p> <p>25% + 50% + 25%</p> </div> <div data-layout="four-column" class="layout"> <p><strong>4 columns</strong></p> <p>4 x 25%</p> </div> <div data-layout="custom" class="layout"> <p><strong>Custom Layout</strong></p> <p>You choose!</p> </div> </div> <div class="tab-pane fade" id="portlets"> <div data-portlet="basic" class="portlet">Basic Panel</div> <div data-portlet="header" class="portlet">With Header</div> <div data-portlet="footer-txt" class="portlet">With Footer <br> Text </div> <div data-portlet="footer-btn" class="portlet">With Footer <br> Button </div> <div data-portlet="header-footer" class="portlet">Header &amp; Footer</div> </div> <div class="tab-pane fade" id="text"> <div data-element="image" class="element">Image</div> <div data-element="paragraph" class="element">Paragraph</div> <div data-element="title-h1" class="element">Big Title h1</div> <div data-element="title-h2" class="element">Medium Title h2</div> <div data-element="title-h3" class="element">Small Title h3</div> </div> <div class="tab-pane fade" id="forms"> <div data-form="input" class="form">Input Text</div> <div data-form="textarea" class="form">Textarea</div> <div data-form="radio" class="form">Radio</div> <div data-form="checkbox" class="form">Checkbox</div> <div data-form="select" class="form">Select</div> <div data-form="slider" class="form">Slider</div> <div data-form="button" class="form">Button</div> </div> <div class="tab-pane fade" id="tables"> <div data-table="table" class="build-table">Table Basic</div> <div data-table="table-dynamic" class="build-table">Table Dynamic</div> </div> <div class="tab-pane fade" id="widgets"> <div data-widget="todo" class="build-widget">Todo List</div> <div data-widget="news" class="build-widget">News</div> <div data-widget="table" class="build-widget">Panel Table</div> <div data-widget="calendar" class="build-widget">Calendar</div> </div> </div> </div></div><div class="builder-wrapper"> <div class="row"> <div class="placeholder-container"> <div class="placeholder"> <div class="placeholder-content col-md-6"> <div class="placeholder-content-area"> </div> </div> <div class="placeholder-content col-md-6"> <div class="placeholder-content-area"> </div> </div> </div> <div class="placeholder-handle"> <div class="handle-move" data-rel="tooltip" data-placement="right" data-original-title="Move"><i class="fa fa-bars"></i> </div> <div class="handle-remove" data-rel="tooltip" data-placement="right" data-original-title="Remove"><i class="fa fa-times"></i> </div> </div> </div> </div> <div class="row"> <div class="placeholder-container"> <div class="placeholder"> <div class="placeholder-content col-md-8"> <div class="placeholder-content-area"> </div> </div> <div class="placeholder-content col-md-4"> <div class="placeholder-content-area"> </div> </div> </div> <div class="placeholder-handle"> <div class="handle-move" data-rel="tooltip" data-placement="right" data-original-title="Move"><i class="fa fa-bars"></i> </div> <div class="handle-remove" data-rel="tooltip" data-placement="right" data-original-title="Remove"><i class="fa fa-times"></i> </div> </div> </div> </div> <div class="row"> <div class="placeholder-container"> <div class="placeholder"> <div class="placeholder-content col-md-12"> <div class="placeholder-content-area"> </div> </div> </div> <div class="placeholder-handle"> <div class="handle-move" data-rel="tooltip" data-placement="right" data-original-title="Move"><i class="fa fa-bars"></i> </div> <div class="handle-remove" data-rel="tooltip" data-placement="right" data-original-title="Remove"><i class="fa fa-times"></i> </div> </div> </div> </div></div><div class="modal fade" id="form-settings" tabindex="-1" role="dialog" aria-hidden="true"> <div class="modal-dialog"> <div class="modal-content"> <div class="modal-header bg-primary"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i> </button> <h4 class="modal-title"><strong>Form</strong> Settings</h4> </div> <div class="modal-body"> <div class="form-group m-t-10"> <label class="control-label">Form Title <small>optionnal</small> </label> <div class="append-icon"> <input type="text" class="form-title form-control form-white" /> <i class="icon-pencil"></i> </div> </div> <div class="form-group m-t-10"> <label class="control-label">Choose your Form Layout</label> <div class="input-group m-t-10"> <div class="icheck-inline"> <label> <input type="radio" name="form-layout" data-form-layout="horizontal" data-radio="iradio_minimal-blue" checked> Horizontal</label> <label> <input type="radio" name="form-layout" data-form-layout="vertical" data-radio="iradio_minimal-blue"> Vertical</label> </div> </div> </div> </div> <div class="modal-footer"> <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">Close</button> <button type="button" id="save-form-settings" class="btn btn-primary btn-embossed">Save changes</button> </div> </div> </div></div><div class="modal fade" id="form-radio" tabindex="-1" role="dialog" aria-hidden="true"> <div class="modal-dialog"> <div class="modal-content"> <div class="modal-header bg-primary"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i> </button> <h4 class="modal-title"><strong>Form</strong> Radio</h4> </div> <div class="modal-body"> <div class="form-group m-t-10"> <label class="control-label">Label</label> <div class="append-icon"> <input type="text" class="radio-label form-control form-white" /> <i class="icon-pencil"></i> </div> </div> <div class="form-group m-t-10"> <label class="control-label">Radio Name</label> <div class="append-icon"> <input type="text" class="radio-name form-control form-white" /> <i class="icon-pencil"></i> </div> </div> <div class="form-group"> <p><strong>Number of Radio Buttons</strong> </p> <div class="input-group"> <div style="width:560px;" class="primary m-b-30 m-t-20"> <div data-slider-tooltip="always" class="radio-slide" data-slider-min="2" data-slider-max="10" data-slider-value="3"></div> </div> </div> </div> <div class="form-group"> <p><strong>Radios Layout</strong> </p> <div class="input-group"> <div class="icheck-inline radio-layout"> <label> <input type="radio" name="radio-layout" data-radio-layout="vertical" data-radio="iradio_minimal-blue" checked> Vertical</label> <label> <input type="radio" name="radio-layout" data-radio-layout="horizontal" data-radio="iradio_minimal-blue"> Horizontal</label> </div> </div> </div> <div class="input-group"> <div class="icheck-list"> <label> <input type="checkbox" class="radio-required" data-checkbox="icheckbox_square-blue"> Required </label> <label> </div> </div> </div> <div class="modal-footer"> <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">Close</button> <button type="button" id="save-form-radio" class="btn btn-primary btn-embossed">Save changes</button> </div> </div> </div></div><div class="modal fade" id="form-checkbox" tabindex="-1" role="dialog" aria-hidden="true"> <div class="modal-dialog"> <div class="modal-content"> <div class="modal-header bg-primary"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i> </button> <h4 class="modal-title"><strong>Form</strong> Checkbox</h4> </div> <div class="modal-body"> <div class="form-group m-t-10"> <label class="control-label">Label</label> <div class="append-icon"> <input type="text" class="checkbox-label form-control form-white" /> <i class="icon-pencil"></i> </div> </div> <div class="form-group m-t-10"> <label class="control-label">Checkbox Name</label> <div class="append-icon"> <input type="text" class="checkbox-name form-control form-white" /> <i class="icon-pencil"></i> </div> </div> <div class="form-group"> <p><strong>Number of Checkbox Buttons</strong> </p> <div class="input-group"> <div style="width:560px;" class="primary m-b-30 m-t-20"> <div data-slider-tooltip="always" class="checkbox-slide" data-slider-min="2" data-slider-max="10" data-slider-value="3"></div> </div> </div> </div> <div class="form-group"> <p><strong>Radios Layout</strong> </p> <div class="input-group"> <div class="icheck-inline checkbox-layout"> <label> <input type="radio" class="checkbox-vertical" name="checkbox-layout" data-checkbox-layout="vertical" data-radio="iradio_minimal-blue" checked> Vertical</label> <label> <input type="radio" class="checkbox-horizontal" name="checkbox-layout" data-checkbox-layout="horizontal" data-radio="iradio_minimal-blue"> Horizontal</label> </div> </div> </div> <div class="input-group"> <p><strong>This field is mandatory</strong> </p> <div class="icheck-list"> <label> <input type="checkbox" class="checkbox-required" data-checkbox="icheckbox_square-blue"> Required </label> <label> </div> </div> </div> <div class="modal-footer"> <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">Close</button> <button type="button" id="save-form-checkbox" class="btn btn-primary btn-embossed">Save changes</button> </div> </div> </div></div><div class="modal fade" id="form-select" tabindex="-1" role="dialog" aria-hidden="true"> <div class="modal-dialog"> <div class="modal-content"> <div class="modal-header bg-primary"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i> </button> <h4 class="modal-title"><strong>Form</strong> Select</h4> </div> <div class="modal-body"> <div class="form-group m-t-10"> <label class="control-label">Label</label> <div class="append-icon"> <input type="text" class="select-label form-control form-white" /> <i class="icon-pencil"></i> </div> </div> <div class="form-group m-t-10"> <label class="control-label">Select Name</label> <div class="append-icon"> <input type="text" class="select-name form-control form-white" /> <i class="icon-pencil"></i> </div> </div> <div class="form-group"> <p><strong>Options</strong> <small>One option per line</small> <p> <textarea name="select-options" id="" cols="30" rows="10" class="form-control form-white select-options"></textarea> </div> <div class="form-group"> <p><strong>Select settings</strong> <div class="input-group"> <div class="icheck-inline"> <label> <input type="checkbox" class="select-required" data-checkbox="icheckbox_square-blue"> Required</label> <label> <input type="checkbox" class="select-multiple" data-checkbox="icheckbox_square-blue"> Multiple choice</label> <label> <input type="checkbox" class="select-search" data-checkbox="icheckbox_square-blue"> Search include</label> </div> </div> </div> </div> <div class="modal-footer"> <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">Close</button> <button type="button" id="save-form-select" class="btn btn-primary btn-embossed">Save changes</button> </div> </div> </div></div><div class="modal fade" id="form-button" tabindex="-1" role="dialog" aria-hidden="true"> <div class="modal-dialog"> <div class="modal-content"> <div class="modal-header bg-primary"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i> </button> <h4 class="modal-title"><strong>Form</strong> Buttons</h4> </div> <div class="modal-body"> <div class="form-group m-t-10"> <label class="control-label">Label <small>optional</small> </label> <div class="append-icon"> <input type="text" class="button-label form-control form-white" /> <i class="icon-pencil"></i> </div> </div> <div class="form-group m-t-10"> <p><strong>Button Type</strong> </p> <div class="input-group"> <div class="icheck-inline button-type"> <label> <input type="radio" class="file-btn" data-button-type="btn-file" name="button-type" data-radio="iradio_minimal-blue"> File button</label> <label> <input type="radio" class="btn1" data-button-type="btn1" name="button-type" checked data-radio="iradio_minimal-blue" checked> 1 button</label> <label> <input type="radio" class="btn1-2" data-button-type="btn1-2" name="button-type" data-radio="iradio_minimal-blue"> 2 button </label> </div> </div> </div> <div class="row btn1 btn1-2" id="btn1"> <div class="col-sm-12"> <p><strong>Button 1</strong> </p> </div> <div class="col-sm-6 m-t-10"> <div class="form-group"> <label class="control-label">Button Class Type</label> <select class="button1-class form-control" data-placeholder="Choose a class name..."> <option value="default">Default</option> <option value="success">Success</option> <option value="primary">Primary</option> <option value="danger">Danger</option> <option value="warning">Warning</option> <option value="info">Info</option> <option value="white">White</option> <option value="dark">Dark</option> </select> </div> </div> <div class="col-sm-6 m-t-10"> <div class="form-group"> <label class="control-label">Button Style</label> <select class="button1-style form-control" data-placeholder="Choose a style..."> <option value="default">Default</option> <option value="embossed">Embossed</option> <option value="square">Square</option> <option value="transparent">Transparent</option> <option value="rounded">Rounded</option> </select> </div> </div> <div class="col-sm-6"> <div class="form-group"> <label class="control-label">ID / Name</label> <div class="append-icon"> <input type="text" class="button1-name form-control form-white" /> <i class="icon-pencil"></i> </div> </div> </div> <div class="col-sm-6"> <div class="form-group"> <label class="control-label">Button text</label> <div class="append-icon"> <input type="text" class="button1-txt form-control form-white" /> <i class="icon-pencil"></i> </div> </div> </div> </div> <div class="row btn1-2" id="btn2" style="display: none;"> <div class="col-sm-12"> <p><strong>Button 2</strong> </p> </div> <div class="col-sm-6 m-t-10"> <div class="form-group"> <label class="control-label">Button Class Type</label> <select class="button2-class form-control" data-placeholder="Choose a class name..."> <option value="default">Default</option> <option value="success">Success</option> <option value="primary">Primary</option> <option value="danger">Danger</option> <option value="warning">Warning</option> <option value="info">Info</option> <option value="white">White</option> <option value="dark">Dark</option> </select> </div> </div> <div class="col-sm-6 m-t-10"> <div class="form-group"> <label class="control-label">Button Style</label> <select class="button2-style form-control" data-placeholder="Choose a style..."> <option value="default">Default</option> <option value="embossed">Embossed</option> <option value="square">Square</option> <option value="transparent">Transparent</option> <option value="rounded">Rounded</option> </select> </div> </div> <div class="col-sm-6 m-t-10"> <div class="form-group"> <label class="control-label">ID / Name</label> <div class="append-icon"> <input type="text" class="button2-name form-control form-white" /> <i class="icon-pencil"></i> </div> </div> </div> <div class="col-sm-6 m-t-10"> <div class="form-group"> <label class="control-label">Button text</label> <div class="append-icon"> <input type="text" class="button2-txt form-control form-white" /> <i class="icon-pencil"></i> </div> </div> </div> </div> <div class="row btn-file" id="file-btn" style="display: none;"> <div class="col-sm-12"> <p><strong>File Button</strong> </p> </div> <div class="col-sm-6"> <div class="form-group m-t-10"> <label class="control-label">ID / Name</label> <div class="append-icon"> <input type="text" class="file-button-label form-control form-white" /> <i class="icon-pencil"></i> </div> </div> </div> <div class="col-sm-6"> <div class="form-group m-t-10"> <label class="control-label">Button text</label> <div class="append-icon"> <input type="text" class="file-button-txt form-control form-white" /> <i class="icon-pencil"></i> </div> </div> </div> </div> </div> <div class="modal-footer"> <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">Close</button> <button type="button" id="save-form-button" class="btn btn-primary btn-embossed">Save changes</button> </div> </div> </div></div><div class="modal fade" id="table" tabindex="-1" role="dialog" aria-hidden="true"> <div class="modal-dialog"> <div class="modal-content"> <div class="modal-header bg-primary"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i> </button> <h4 class="modal-title"><strong>Form</strong> Table</h4> </div> <div class="modal-body"> <div class="form-group m-t-10"> <label class="control-label">Table Title <small>optionnal</small> </label> <div class="append-icon"> <input type="text" class="table-title form-control form-white" /> <i class="icon-pencil"></i> </div> </div> <div class="form-group"> <label class="control-label">Table Style</label> <select class="table-style form-control" data-placeholder="Choose table style..."> <option value="default">Default</option> <option value="striped">Stripped row</option> <option value="hover">Hover table</option> <option value="bordered">Bordered</option> </select> </div> <div class="row"> <div class="col-sm-6"> <div class="form-group"> <p><strong>Number of Columns</strong> </p> <div class="input-group m-t-20"> <div style="width:250px;" class="primary m-b-30 m-t-20"> <div data-slider-tooltip="always" class="table-columns-slide" data-slider-min="1" data-slider-max="20" data-slider-value="5"></div> </div> </div> </div> </div> <div class="col-sm-6"> <div class="form-group"> <p><strong>Number of Rows</strong> </p> <div class="input-group m-t-20"> <div style="width:255px;" class="primary m-b-30 m-t-20"> <div data-slider-tooltip="always" class="table-rows-slide" data-slider-min="1" data-slider-max="100" data-slider-value="5"></div> </div> </div> </div> </div> </div> </div> <div class="modal-footer"> <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">Close</button> <button type="button" id="save-table" class="btn btn-primary btn-embossed">Save changes</button> </div> </div> </div></div><div class="modal fade" id="custom-layout" tabindex="-1" role="dialog" aria-hidden="true"> <!-- MODAL CUSTOM LAYOUT --> <div class="modal-dialog"> <div class="modal-content"> <div class="modal-header bg-primary"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i> </button> <h4 class="modal-title">Custom <strong>Layout</strong></h4> </div> <div class="modal-body"> <div class="form-group m-b-0"> <label class="control-label">Choose number of columns / sections you need</label> <div class="input-group m-t-10"> <div style="width:545px;" class="primary m-b-10 m-t-20 m-l-10"> <div data-slider-tooltip="always" id="num-columns" class="custom-slide-columns" data-slider-min="1" data-slider-max="12" data-slider-value="3"></div> </div> </div> <div class="slider-wrap p-20 m-t-40" style="margin-left:-8px"> <div id="slider-custom-columns"></div> <input type="hidden" class="value-columns form-control" name="col[widths]" value="4/12_4/12_4/12" /> </div> </div> </div> <div class="modal-footer"> <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">Cancel</button> <button type="button" id="save-custom-layout" class="btn btn-primary btn-embossed">Create Layout</button> </div> </div> </div></div><div class="modal fade" id="modal-export-page" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> <!-- MODALS EXPORT PAGE --> <div class="modal-dialog" style="width:500px"> <div class="modal-content"> <div class="modal-header bg-primary"> <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="icons-office-52"></i></span> </button> <h4 class="modal-title" id="myModalLabel">Export My Page Template</h4> </div> <div class="modal-body"> <div class="form-group m-t-10 form-link"> <label class="control-label">Choose your Template Name:</label> <div class="append-icon"> <input type="text" class="html-file-name form-control form-white" /><i class="icon-pencil"></i> </div> </div> </div> <div class="modal-footer t-center"> <button type="button" class="btn btn-white" data-dismiss="modal">Cancel</button> <button type="button" class="export btn btn-primary">Save</button> <div class="alert alert-info m-t-20 p-10"> <p class="f-13">After uploading your template, copy and past your file inside admin folder, with other admin pages.</p> </div> </div> </div> </div></div>';
    $('.page-content').addClass('page-builder');
    var placeholderContainer = '<div class="placeholder-container"><div class="placeholder"><div class="placeholder-content col-md-12"> </div></div><div class="placeholder-handle"><div class="handle-move" data-rel="tooltip" data-placement="right" data-original-title="Move"><i class="fa fa-bars"></i></div><div class="handle-remove" data-rel="tooltip" data-placement="right" data-original-title="Remove"><i class="fa fa-times"></i></div></div></div>';
    if ($(".page-content .header").length) {
        var headerPlaceholder = $(".page-content .header").wrap('<div class="row"><div class="placeholder-container"><div class="placeholder"><div class="placeholder-content col-md-12"></div></div><div class="placeholder-handle"><div class="handle-move" data-rel="tooltip" data-placement="right" data-original-title="Move"><i class="fa fa-bars"></i></div><div class="handle-remove" data-rel="tooltip" data-placement="right" data-original-title="Remove"><i class="fa fa-times"></i></div></div></div></div>');
    }
    $('.page-content').append(contentPageBuider);
    $('.page-content .builder-wrapper').prepend($(".page-content .header").parent().parent().parent().parent());
    $('.page-content .builder-wrapper').prepend($(".page-content > .row"));
    $('.page-content').append('<div class="export-page"><a href="#" id="export" class="btn btn-dark btn-square btn-embossed">Export Page Template</a></div>');
    if ($(".page-content .footer").length) {
        $('.page-content .builder-wrapper').append($(".page-content .footer"));
    }
    handlePageBuilder();
    handleiCheck();
    $('.custom-page').remove();
}

/* Export Admin in HTML */
$('.page-content').on('click', '#export', function(e) {
    e.preventDefault();
    $('#modal-export-page').modal('show');
});

$('.page-content').on('shown.bs.modal', '#modal-export-page', function (e) {
    removeEditor($(this));
    var fileName = $('.html-file-name').val();
    if(fileName == '') fileName = 'my-custom-admin';

    $('body').removeClass('modal-open');
    $('body').removeClass('builder-page');
    $('#hidden-small-screen-message').remove();
    var bodyClass = $('body').attr('class');
    if (fileName == '') fileName = 'my-custom-admin';
    var adminHeader = '<!DOCTYPE html>\n' + '<html lang="en" class="rtl">\n' + '<head>\n' + '  <meta charset="utf-8">\n' + '  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">\n' + '  <meta name="description" content="admin-themes-lab">\n' + '  <meta name="author" content="themes-lab">\n' + '  <link rel="shortcut icon" href="../assets/global/images/favicon.png" type="image/png">\n' + '  <title>Make</title>\n' + '  <link href="http://fonts.googleapis.com/css?family=Nothing+You+Could+Do" rel="stylesheet" type="text/css">\n' + '  <link href="../assets/global/css/style.css" rel="stylesheet"> <!-- MANDATORY -->\n' + '  <link href="../assets/global/css/theme.css" rel="stylesheet"> <!-- MANDATORY -->\n' + '  <link href="../assets/global/css/ui.css" rel="stylesheet"> <!-- MANDATORY -->\n' + '  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\n' + '  <!--[if lt IE 9]>\n' + '  <script src="../assets/global/plugins/modernizr/modernizr-2.6.2-respond-1.1.0.min.js"></script>\n' + '  <![endif]-->\n' + '</head>\n' + '<!-- LAYOUT: Apply "submenu-hover" class to body element to have sidebar submenu show on mouse hover -->\n' + '<!-- LAYOUT: Apply "sidebar-collapsed" class to body element to have collapsed sidebar -->\n' + '<!-- LAYOUT: Apply "sidebar-top" class to body element to have sidebar on top of the page -->\n' + '<!-- LAYOUT: Apply "sidebar-hover" class to body element to show sidebar only when your mouse is on left / right corner -->\n' + '<!-- LAYOUT: Apply "submenu-hover" class to body element to show sidebar submenu on mouse hover -->\n' + '<!-- LAYOUT: Apply "fixed-sidebar" class to body to have fixed sidebar -->\n' + '<!-- LAYOUT: Apply "fixed-topbar" class to body to have fixed topbar -->\n' + '<!-- LAYOUT: Apply "rtl" class to body to put the sidebar on the right side -->\n' + '<!-- LAYOUT: Apply "boxed" class to body to have your page with 1200px max width -->\n' + '<!-- THEME STYLE: Apply "theme-sdtl" for Sidebar Dark / Topbar Light -->\n' + '<!-- THEME STYLE: Apply  "theme sdtd" for Sidebar Dark / Topbar Dark -->\n' + '<!-- THEME STYLE: Apply "theme sltd" for Sidebar Light / Topbar Dark -->\n' + '<!-- THEME STYLE: Apply "theme sltl" for Sidebar Light / Topbar Light -->\n' + '<!-- THEME COLOR: Apply "color-default" for dark color: #2B2E33 -->\n' + '<!-- THEME COLOR: Apply "color-primary" for primary color: #319DB5 -->\n' + '<!-- THEME COLOR: Apply "color-red" for red color: #C9625F -->\n' + '<!-- THEME COLOR: Apply "color-default" for green color: #18A689 -->\n' + '<!-- THEME COLOR: Apply "color-default" for orange color: #B66D39 -->\n' + '<!-- THEME COLOR: Apply "color-default" for purple color: #6E62B5 -->\n' + '<!-- THEME COLOR: Apply "color-default" for blue color: #4A89DC -->\n' + '<!-- BEGIN BODY -->\n' + '<body class="' + bodyClass + '">\n' + '  <section>';
    var copyright   = '      <div class="footer">\n' + '        <div class="copyright">\n' + '          <p class="pull-left sm-pull-reset"> <span>Copyright <span class="copyright">©</span> 2014 </span> <span>THEMES LAB</span>. <span>All rights reserved. </span> </p>\n' + '          <p class="pull-right sm-pull-reset"> <span><a href="#" class="m-r-10">Support</a> | <a href="#" class="m-l-10 m-r-10">Terms of use</a> | <a href="#" class="m-l-10">Privacy Policy</a></span> </p>\n' + '        </div>\n' + '      </div>\n';
    var adminFooter = '<!-- Preloader -->\n' + '  <div class="loader-overlay">\n' + '    <div class="spinner">\n' + '      <div class="bounce1"></div>\n' + '      <div class="bounce2"></div>\n' + '      <div class="bounce3"></div>\n' + '    </div>\n' + '  </div>\n' + '<a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a> \n' + '<script src="../assets/global/plugins/jquery/jquery-1.11.1.min.js"></script>\n' + '<script src="../assets/global/plugins/jquery/jquery-migrate-1.2.1.min.js"></script>\n' + '<script src="../assets/global/plugins/gsap/main-gsap.min.js"></script> <!-- HTML Animations -->\n' + '<script src="../assets/global/plugins/jquery-ui/jquery-ui-1.11.2.min.js"></script>\n' + '<script src="../assets/global/plugins/jquery-block-ui/jquery.blockUI.min.js"></script> <!-- simulate synchronous behavior when using AJAX -->\n' + '<script src="../assets/global/plugins/bootbox/bootbox.min.js"></script> \n' + '<script src="../assets/global/plugins/mcustom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script> <!-- Custom Scrollbar sidebar -->\n' + '<script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js"></script>\n' + '<script src="../assets/global/plugins/bootstrap-dropdown/bootstrap-hover-dropdown.min.js"></script> <!-- Show Dropdown on Mouseover -->\n' + '<script src="../assets/global/plugins/bootstrap-progressbar/bootstrap-progressbar.min.js"></script> <!-- Animated Progress Bar -->\n' + '<script src="../assets/global/plugins/switchery/switchery.min.js"></script> <!-- IOS Switch -->\n' + '<script src="../assets/global/plugins/charts-sparkline/sparkline.min.js"></script> <!-- Charts Sparkline -->\n' + '<script src="../assets/global/plugins/retina/retina.min.js"></script> \n' + '<script src="../assets/global/plugins/jquery-cookies/jquery.cookies.min.js"></script> <!-- Jquery Cookies, for theme -->\n' + '<script src="../assets/global/plugins/bootstrap/js/jasny-bootstrap.min.js"></script> <!-- File Upload and Input Masks -->\n' + '<script src="../assets/global/plugins/select2/select2.min.js"></script> <!-- Select Inputs -->\n' + '<script src="../assets/global/plugins/bootstrap-tags-input/bootstrap-tagsinput.min.js"></script> <!-- Select Inputs -->\n' + '<script src="../assets/global/plugins/bootstrap-loading/lada.min.js"></script> <!-- Buttons Loading State -->\n' + '<script src="../assets/global/plugins/timepicker/jquery-ui-timepicker-addon.min.js"></script> <!-- Time Picker -->\n' + '<script src="../assets/global/plugins/multidatepicker/multidatespicker.min.js"></script> <!-- Multi dates Picker -->\n' + '<script src="../assets/global/plugins/colorpicker/spectrum.min.js"></script> <!-- Color Picker -->\n' + '<script src="../assets/global/plugins/touchspin/jquery.bootstrap-touchspin.min.js"></script> <!-- A mobile and touch friendly input spinner component for Bootstrap -->\n' + '<script src="../assets/global/plugins/autosize/autosize.min.js"></script> <!-- Textarea autoresize -->\n' + '<script src="../assets/global/plugins/icheck/icheck.min.js"></script> <!-- Icheck -->\n' + '<script src="../assets/global/plugins/bootstrap-editable/js/bootstrap-editable.min.js"></script> <!-- Inline Edition X-editable -->\n' + '<script src="../assets/global/plugins/bootstrap-context-menu/bootstrap-contextmenu.min.js"></script> <!-- Context Menu -->\n' + '<script src="../assets/global/plugins/prettify/prettify.min.js"></script> <!-- Show html code -->\n' + '<script src="../assets/global/plugins/slick/slick.min.js"></script> <!-- Slider -->\n' + '<script src="../assets/global/plugins/countup/countUp.min.js"></script> <!-- Animated Counter Number -->\n' + '<script src="../assets/global/plugins/noty/jquery.noty.packaged.min.js"></script>  <!-- Notifications -->\n' + '<script src="../assets/global/plugins/backstretch/backstretch.min.js"></script> <!-- Background Image -->\n' + '<script src="../assets/global/plugins/charts-chartjs/Chart.min.js"></script>  <!-- ChartJS Chart -->\n' + '<script src="../assets/global/plugins/summernote/summernote.js"></script>\n' + '<script src="../assets/global/plugins/bootstrap-slider/bootstrap-slider.js"></script>\n' + '<script src="../assets/global/plugins/skycons/skycons.js"></script>\n' + '<script src="../assets/global/js/sidebar_hover.js"></script>\n' + '<script src="../assets/global/js/application.js"></script> <!-- Main Application Script -->\n' + '<script src="../assets/global/js/plugins.js"></script> <!-- Main Plugin Initialization Script -->\n' + '<script src="../assets/global/js/widgets/notes.js"></script>\n' + '<script src="../assets/global/js/quickview.js"></script>\n' + '<script src="../assets/global/js/pages/search.js"></script>\n' + '<script src="../assets/admin/layout1/js/layout.js"></script>\n' + '</body>\n' + '</html>';
    
    if ($('body').hasClass('fixed-sidebar')) {
        var sidebarIsFixed = true;
        handleSidebarFluid();
        $('body').addClass('fixed-sidebar');
    }
    var allContent = $('body > section').clone();

    var quickviewSidebar =  '</section>\n' + 
                            '<div id="quickview-sidebar">\n' + 
                            '  <div class="quickview-header">\n' + 
                            '    <ul class="nav nav-tabs">\n' + 
                            '      <li class="active"><a href="#chat" data-toggle="tab">Chat</a></li>\n' + 
                            '      <li><a href="#notes" data-toggle="tab">Notes</a></li>\n' + 
                            '      <li><a href="#settings" data-toggle="tab" class="settings-tab">Settings</a></li>\n' + 
                            '    </ul>\n' + 
                            '  </div>\n' + 
                            '  <div class="quickview">\n' + 
                            '    <div class="tab-content">\n' + 
                            '      <div class="tab-pane fade active in" id="chat">\n' + 
                            '        <div class="chat-body current">\n' + 
                            '          <div class="chat-search">\n' + 
                            '            <form class="form-inverse" action="#" role="search">\n' + 
                            '              <div class="append-icon">\n' + 
                            '                <input type="text" class="form-control" placeholder="Search contact...">\n' + 
                            '                <i class="icon-magnifier"></i>\n' + 
                            '              </div>\n' + 
                            '            </form>\n' + 
                            '          </div>\n' + 
                            '          <div class="chat-groups">\n' + 
                            '            <div class="title">GROUP CHATS</div>\n' + 
                            '            <ul>\n' + 
                            '              <li><i class="turquoise"></i> Favorites</li>\n' + 
                            '              <li><i class="turquoise"></i> Office Work</li>\n' + 
                            '              <li><i class="turquoise"></i> Friends</li>\n' + 
                            '            </ul>\n' + 
                            '          </div>\n' + 
                            '          <div class="chat-list">\n' + 
                            '            <div class="title">FAVORITES</div>\n' + 
                            '            <ul>\n' + 
                            '              <li class="clearfix">\n' + 
                            '                <div class="user-img">\n' + 
                            '                  <img src="../assets/global/images/avatars/avatar13.png" alt="avatar" />\n' +
                            '                </div>\n' + 
                            '                <div class="user-details">\n' + 
                            '                  <div class="user-name">Bobby Brown</div>\n' + 
                            '                  <div class="user-txt">On the road again...</div>\n' + 
                            '                </div>\n' + 
                            '                <div class="user-status">\n' + 
                            '                  <i class="online"></i>\n' + 
                            '                </div>\n' + 
                            '              </li>\n' + 
                            '              <li class="clearfix">\n' + 
                            '                <div class="user-img">\n' + 
                            '                  <img src="../assets/global/images/avatars/avatar5.png" alt="avatar" />\n' + 
                            '                  <div class="pull-right badge badge-danger">3</div>\n' + 
                            '                </div>\n' + 
                            '                <div class="user-details">\n' + 
                            '                  <div class="user-name">Alexa Johnson</div>\n' + 
                            '                  <div class="user-txt">Still at the beach</div>\n' + 
                            '                </div>\n' + 
                            '                <div class="user-status">\n' + 
                            '                  <i class="away"></i>\n' + 
                            '                </div>\n' + 
                            '              </li>\n' + 
                            '              <li class="clearfix">\n' + 
                            '                <div class="user-img">\n' + 
                            '                  <img src="../assets/global/images/avatars/avatar10.png" alt="avatar" />\n' + 
                            '                </div>\n' + 
                            '                <div class="user-details">\n' + 
                            '                  <div class="user-name">Bobby Brown</div>\n' + 
                            '                  <div class="user-txt">On stage...</div>\n' + 
                            '                </div>\n' + 
                            '                <div class="user-status">\n' + 
                            '                  <i class="busy"></i>\n' + 
                            '                </div>\n' + 
                            '              </li>\n' + 
                            '            </ul>\n' + 
                            '          </div>\n' + 
                            '          <div class="chat-list">\n' + 
                            '            <div class="title">FRIENDS</div>\n' + 
                            '            <ul>\n' + 
                            '              <li class="clearfix">\n' + 
                            '                <div class="user-img">\n' + 
                            '                  <img src="../assets/global/images/avatars/avatar7.png" alt="avatar" />\n' + 
                            '                  <div class="pull-right badge badge-danger">3</div>\n' + 
                            '                </div>\n' + 
                            '                <div class="user-details">\n' + 
                            '                  <div class="user-name">James Miller</div>\n' + 
                            '                  <div class="user-txt">At work...</div>\n' + 
                            '                </div>\n' + 
                            '                <div class="user-status">\n' + 
                            '                  <i class="online"></i>\n' + 
                            '                </div>\n' + 
                            '              </li>\n' + 
                            '              <li class="clearfix">\n' + 
                            '                <div class="user-img">\n' + 
                            '                  <img src="../assets/global/images/avatars/avatar11.png" alt="avatar" />\n' + 
                            '                </div>\n' + 
                            '                <div class="user-details">\n' + 
                            '                  <div class="user-name">Fred Smith</div>\n' + 
                            '                  <div class="user-txt">Waiting for tonight</div>\n' + 
                            '                </div>\n' + 
                            '                <div class="user-status">\n' + 
                            '                  <i class="offline"></i>\n' + 
                            '                </div>\n' + 
                            '              </li>\n' + 
                            '              <li class="clearfix">\n' + 
                            '                <div class="user-img">\n' + 
                            '                  <img src="../assets/global/images/avatars/avatar8.png" alt="avatar" />\n' + 
                            '                </div>\n' + 
                            '                <div class="user-details">\n' + 
                            '                  <div class="user-name">Ben Addams</div>\n' + 
                            '                  <div class="user-txt">On my way to NYC</div>\n' + 
                            '                </div>\n' + 
                            '                <div class="user-status">\n' + 
                            '                  <i class="offline"></i>\n' + 
                            '                </div>\n' + 
                            '              </li>\n' + 
                            '            </ul>\n' + 
                            '          </div>\n' + 
                            '        </div>\n' + 
                            '        <div class="chat-conversation">\n' + 
                            '          <div class="conversation-header">\n' + 
                            '            <div class="user clearfix">\n' + 
                            '              <div class="chat-back">\n' + 
                            '                <i class="icon-action-undo"></i>\n' + 
                            '              </div>\n' + 
                            '              <div class="user-details">\n' + 
                            '                <div class="user-name">James Miller</div>\n' + 
                            '                <div class="user-txt">On the road again...</div>\n' + 
                            '              </div>\n' + 
                            '            </div>\n' + 
                            '          </div>\n' + 
                            '          <div class="conversation-body">\n' + 
                            '            <ul>\n' + 
                            '              <li class="img">\n' + 
                            '                <div class="chat-detail">\n' + 
                            '                  <span class="chat-date">today, 10:38pm</span>\n' + 
                            '                  <div class="conversation-img">\n' + 
                            '                    <img src="../assets/global/images/avatars/avatar4.png" alt="avatar 4"/>\n' + 
                            '                  </div>\n' + 
                            '                  <div class="chat-bubble">\n' + 
                            '                    <span>Hi you!</span>\n' + 
                            '                  </div>\n' + 
                            '                </div>\n' + 
                            '              </li>\n' + 
                            '              <li class="img">\n' + 
                            '                <div class="chat-detail">\n' + 
                            '                  <span class="chat-date">today, 10:45pm</span>\n' + 
                            '                  <div class="conversation-img">\n' + 
                            '                    <img src="../assets/global/images/avatars/avatar4.png" alt="avatar 4"/>\n' + 
                            '                  </div>\n' + 
                            '                  <div class="chat-bubble">\n' + 
                            '                    <span>Are you there?</span>\n' + 
                            '                  </div>\n' + 
                            '                </div>\n' + 
                            '              </li>\n' + 
                            '              <li class="img">\n' + 
                            '                <div class="chat-detail">\n' + 
                            '                  <span class="chat-date">today, 10:51pm</span>\n' + 
                            '                  <div class="conversation-img">\n' + 
                            '                    <img src="../assets/global/images/avatars/avatar4.png" alt="avatar 4"/>\n' + 
                            '                  </div>\n' + 
                            '                  <div class="chat-bubble">\n' + 
                            '                    <span>Send me a message when you come back.</span>\n' + 
                            '                  </div>\n' + 
                            '                </div>\n' + 
                            '              </li>\n' + 
                            '            </ul>\n' + 
                            '          </div>\n' + 
                            '          <div class="conversation-message">\n' + 
                            '            <input type="text" placeholder="Your message..." class="form-control form-white send-message" />\n' + 
                            '            <div class="item-footer clearfix">\n' + 
                            '              <div class="footer-actions">\n' + 
                            '                <i class="icon-rounded-marker"></i>\n' + 
                            '                <i class="icon-rounded-camera"></i>\n' + 
                            '                <i class="icon-rounded-paperclip-oblique"></i>\n' + 
                            '                <i class="icon-rounded-alarm-clock"></i>\n' + 
                            '              </div>\n' + 
                            '            </div>\n' + 
                            '          </div>\n' + 
                            '        </div>\n' + 
                            '      </div>\n' + 
                            '      <div class="tab-pane fade" id="notes">\n' + 
                            '        <div class="list-notes current withScroll">\n' + 
                            '          <div class="notes ">\n' + 
                            '            <div class="row">\n' + 
                            '              <div class="col-md-12">\n' + 
                            '                <div id="add-note">\n' + 
                            '                  <i class="fa fa-plus"></i>ADD A NEW NOTE\n' + 
                            '                </div>\n' + 
                            '              </div>\n' + 
                            '            </div>\n' + 
                            '            <div id="notes-list">\n' + 
                            '              <div class="note-item media current fade in">\n' + 
                            '                <button class="close">×</button>\n' + 
                            '                <div>\n' + 
                            '                  <div>\n' + 
                            '                    <p class="note-name">Reset my account password</p>\n' + 
                            '                  </div>\n' + 
                            '                  <p class="note-desc hidden">Break security reasons.</p>\n' + 
                            '                  <p><small>Tuesday 6 May, 3:52 pm</small></p>\n' + 
                            '                </div>\n' + 
                            '              </div>\n' + 
                            '              <div class="note-item media fade in">\n' + 
                            '                <button class="close">×</button>\n' + 
                            '                <div>\n' + 
                            '                  <div>\n' + 
                            '                    <p class="note-name">Call John</p>\n' + 
                            '                  </div>\n' + 
                            '                  <p class="note-desc hidden">He have my laptop!</p>\n' + 
                            '                  <p><small>Thursday 8 May, 2:28 pm</small></p>\n' + 
                            '                </div>\n' + 
                            '              </div>\n' + 
                            '              <div class="note-item media fade in">\n' + 
                            '                <button class="close">×</button>\n' + 
                            '                <div>\n' + 
                            '                  <div>\n' + 
                            '                    <p class="note-name">Buy a car</p>\n' + 
                            '                  </div>\n' + 
                            '                  <p class="note-desc hidden">I\'m done with the bus</p>\n' + 
                            '                  <p><small>Monday 12 May, 3:43 am</small></p>\n' + 
                            '                </div>\n' + 
                            '              </div>\n' + 
                            '              <div class="note-item media fade in">\n' + 
                            '                <button class="close">×</button>\n' + 
                            '                <div>\n' + 
                            '                  <div>\n' + 
                            '                    <p class="note-name">Don\'t forget my notes</p>\n' + 
                            '                  </div>\n' + 
                            '                  <p class="note-desc hidden">I have to read them...</p>\n' + 
                            '                  <p><small>Wednesday 5 May, 6:15 pm</small></p>\n' + 
                            '                </div>\n' + 
                            '              </div>\n' + 
                            '              <div class="note-item media current fade in">\n' + 
                            '                <button class="close">×</button>\n' + 
                            '                <div>\n' + 
                            '                  <div>\n' + 
                            '                    <p class="note-name">Reset my account password</p>\n' + 
                            '                  </div>\n' + 
                            '                  <p class="note-desc hidden">Break security reasons.</p>\n' + 
                            '                  <p><small>Tuesday 6 May, 3:52 pm</small></p>\n' + 
                            '                </div>\n' + 
                            '              </div>\n' + 
                            '              <div class="note-item media fade in">\n' + 
                            '                <button class="close">×</button>\n' + 
                            '                <div>\n' + 
                            '                  <div>\n' + 
                            '                    <p class="note-name">Call John</p>\n' + 
                            '                  </div>\n' + 
                            '                  <p class="note-desc hidden">He have my laptop!</p>\n' + 
                            '                  <p><small>Thursday 8 May, 2:28 pm</small></p>\n' + 
                            '                </div>\n' + 
                            '              </div>\n' + 
                            '              <div class="note-item media fade in">\n' + 
                            '                <button class="close">×</button>\n' + 
                            '                <div>\n' + 
                            '                  <div>\n' + 
                            '                    <p class="note-name">Buy a car</p>\n' + 
                            '                  </div>\n' + 
                            '                  <p class="note-desc hidden">I\'m done with the bus</p>\n' + 
                            '                  <p><small>Monday 12 May, 3:43 am</small></p>\n' + 
                            '                </div>\n' + 
                            '              </div>\n' + 
                            '              <div class="note-item media fade in">\n' + 
                            '                <button class="close">×</button>\n' + 
                            '                <div>\n' + 
                            '                  <div>\n' + 
                            '                    <p class="note-name">Don\'t forget my notes</p>\n' + 
                            '                  </div>\n' + 
                            '                  <p class="note-desc hidden">I have to read them...</p>\n' + 
                            '                  <p><small>Wednesday 5 May, 6:15 pm</small></p>\n' + 
                            '                </div>\n' + 
                            '              </div>\n' + 
                            '            </div>\n' + 
                            '          </div>\n' + 
                            '        </div>\n' + 
                            '        <div class="detail-note note-hidden-sm">\n' + 
                            '          <div class="note-header clearfix">\n' + 
                            '            <div class="note-back">\n' + 
                            '              <i class="icon-action-undo"></i>\n' + 
                            '            </div>\n' + 
                            '            <div class="note-edit">Edit Note</div>\n' + 
                            '            <div class="note-subtitle">title on first line</div>\n' + 
                            '          </div>\n' + 
                            '          <div id="note-detail">\n' + 
                            '            <div class="note-write">\n' + 
                            '              <textarea class="form-control" placeholder="Type your note here"></textarea>\n' + 
                            '            </div>\n' + 
                            '          </div>\n' + 
                            '        </div>\n' + 
                            '      </div>\n' + 
                            '      <div class="tab-pane fade" id="settings">\n' + 
                            '        <div class="settings">\n' + 
                            '          <div class="title">ACCOUNT SETTINGS</div>\n' + 
                            '          <div class="setting">\n' + 
                            '            <span> Show Personal Statut</span>\n' + 
                            '            <label class="switch pull-right">\n' + 
                            '            <input type="checkbox" class="switch-input" checked>\n' + 
                            '            <span class="switch-label" data-on="On" data-off="Off"></span>\n' + 
                            '            <span class="switch-handle"></span>\n' + 
                            '            </label>\n' + 
                            '            <p class="setting-info">Lorem ipsum dolor sit amet consectetuer.</p>\n' + 
                            '          </div>\n' + 
                            '          <div class="setting">\n' + 
                            '            <span> Show my Picture</span>\n' + 
                            '            <label class="switch pull-right">\n' + 
                            '            <input type="checkbox" class="switch-input" checked>\n' + 
                            '            <span class="switch-label" data-on="On" data-off="Off"></span>\n' + 
                            '            <span class="switch-handle"></span>\n' + 
                            '            </label>\n' + 
                            '            <p class="setting-info">Lorem ipsum dolor sit amet consectetuer.</p>\n' + 
                            '          </div>\n' + 
                            '          <div class="setting">\n' + 
                            '            <span> Show my Location</span>\n' + 
                            '            <label class="switch pull-right">\n' + 
                            '            <input type="checkbox" class="switch-input">\n' + 
                            '            <span class="switch-label" data-on="On" data-off="Off"></span>\n' + 
                            '            <span class="switch-handle"></span>\n' + 
                            '            </label>\n' + 
                            '            <p class="setting-info">Lorem ipsum dolor sit amet consectetuer.</p>\n' + 
                            '          </div>\n' + 
                            '          <div class="title">CHAT</div>\n' + 
                            '          <div class="setting">\n' + 
                            '            <span> Show User Image</span>\n' + 
                            '            <label class="switch pull-right">\n' + 
                            '            <input type="checkbox" class="switch-input" checked>\n' + 
                            '            <span class="switch-label" data-on="On" data-off="Off"></span>\n' + 
                            '            <span class="switch-handle"></span>\n' + 
                            '            </label>\n' + 
                            '          </div>\n' + 
                            '          <div class="setting">\n' + 
                            '            <span> Show Fullname</span>\n' + 
                            '            <label class="switch pull-right">\n' + 
                            '            <input type="checkbox" class="switch-input" checked>\n' + 
                            '            <span class="switch-label" data-on="On" data-off="Off"></span>\n' + 
                            '            <span class="switch-handle"></span>\n' + 
                            '            </label>\n' + 
                            '          </div>\n' + 
                            '          <div class="setting">\n' + 
                            '            <span> Show Location</span>\n' + 
                            '            <label class="switch pull-right">\n' + 
                            '            <input type="checkbox" class="switch-input">\n' + 
                            '            <span class="switch-label" data-on="On" data-off="Off"></span>\n' + 
                            '            <span class="switch-handle"></span>\n' + 
                            '            </label>\n' + 
                            '          </div>\n' + 
                            '          <div class="setting">\n' + 
                            '            <span> Show Unread Count</span>\n' + 
                            '            <label class="switch pull-right">\n' + 
                            '            <input type="checkbox" class="switch-input" checked>\n' + 
                            '            <span class="switch-label" data-on="On" data-off="Off"></span>\n' + 
                            '            <span class="switch-handle"></span>\n' + 
                            '            </label>\n' + 
                            '          </div>\n' + 
                            '          <div class="title">STATISTICS</div>\n' + 
                            '          <div class="settings-chart">\n' + 
                            '            <div class="clearfix">\n' + 
                            '              <div class="chart-title">Stat 1</div>\n' + 
                            '              <div class="chart-number">82%</div>\n' + 
                            '            </div>\n' + 
                            '            <div class="progress">\n' + 
                            '              <div class="progress-bar progress-bar-primary setting1" data-transitiongoal="82"></div>\n' + 
                            '            </div>\n' + 
                            '          </div>\n' + 
                            '          <div class="settings-chart">\n' + 
                            '            <div class="clearfix">\n' + 
                            '              <div class="chart-title">Stat 2</div>\n' + 
                            '              <div class="chart-number">43%</div>\n' + 
                            '            </div>\n' + 
                            '            <div class="progress">\n' + 
                            '              <div class="progress-bar progress-bar-primary setting2" data-transitiongoal="43"></div>\n' + 
                            '            </div>\n' + 
                            '          </div>\n' + 
                            '          <div class="m-t-30" style="width:100%">\n' + 
                            '            <canvas id="setting-chart" height="300"></canvas>\n' + 
                            '          </div>\n' + 
                            '        </div>\n' + 
                            '      </div>\n' + 
                            '    </div>\n' + 
                            '  </div>\n' + 
                            '</div>';

    var morphSearch =   '<div id="morphsearch" class="morphsearch">\n' + 
                        '  <form class="morphsearch-form">\n' + 
                        '    <input class="morphsearch-input" type="search" placeholder="Search..."/>\n' + 
                        '    <button class="morphsearch-submit" type="submit">Search</button>\n' + 
                        '  </form>\n' + 
                        '  <div class="morphsearch-content withScroll">\n' + 
                        '    <div class="dummy-column user-column">\n' + 
                        '      <h2>Users</h2>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/avatars/avatar1_big.png" alt="Avatar 1"/>\n' + 
                        '        <h3>John Smith</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/avatars/avatar2_big.png" alt="Avatar 2"/>\n' + 
                        '        <h3>Bod Dylan</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/avatars/avatar3_big.png" alt="Avatar 3"/>\n' + 
                        '        <h3>Jenny Finlan</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/avatars/avatar4_big.png" alt="Avatar 4"/>\n' + 
                        '        <h3>Harold Fox</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/avatars/avatar5_big.png" alt="Avatar 5"/>\n' + 
                        '        <h3>Martin Hendrix</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/avatars/avatar6_big.png" alt="Avatar 6"/>\n' + 
                        '        <h3>Paul Ferguson</h3>\n' + 
                        '      </a>\n' + 
                        '    </div>\n' + 
                        '    <div class="dummy-column">\n' + 
                        '      <h2>Articles</h2>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/gallery/1.jpg" alt="1"/>\n' + 
                        '        <h3>How to change webdesign?</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/gallery/2.jpg" alt="2"/>\n' + 
                        '        <h3>News From the sky</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/gallery/3.jpg" alt="3"/>\n' + 
                        '        <h3>Where is the cat?</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/gallery/4.jpg" alt="4"/>\n' + 
                        '        <h3>Just another funny story</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/gallery/5.jpg" alt="5"/>\n' + 
                        '        <h3>How many water we drink every day?</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/gallery/6.jpg" alt="6"/>\n' + 
                        '        <h3>Drag and drop tutorials</h3>\n' + 
                        '      </a>\n' + 
                        '    </div>\n' + 
                        '    <div class="dummy-column">\n' + 
                        '      <h2>Recent</h2>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/gallery/7.jpg" alt="7"/>\n' + 
                        '        <h3>Design Inspiration</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/gallery/8.jpg" alt="8"/>\n' + 
                        '        <h3>Animals drawing</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/gallery/9.jpg" alt="9"/>\n' + 
                        '        <h3>Cup of tea please</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/gallery/10.jpg" alt="10"/>\n' + 
                        '        <h3>New application arrive</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/gallery/11.jpg" alt="11"/>\n' + 
                        '        <h3>Notification prettify</h3>\n' + 
                        '      </a>\n' + 
                        '      <a class="dummy-media-object" href="#">\n' + 
                        '        <img src="../assets/global/images/gallery/12.jpg" alt="12"/>\n' + 
                        '        <h3>My article is the last recent</h3>\n' + 
                        '      </a>\n' + 
                        '    </div>\n' + 
                        '  </div>\n' + 
                        '  <!-- /morphsearch-content -->\n' + 
                        '  <span class="morphsearch-close"></span>\n' + 
                        '</div>';                       

    allContent.find('#ip-container').remove();
    allContent.find('.builder').remove();

    /* Fix URL and SRC attribute for export */
    allContent.find('.sidebar a').each(function(){
        var newurl = $(this).attr('href').replace('../../admin/','');
        newurl     = $(this).attr('href').replace('../admin-builder/','../builder/admin-builder/');
        newurl     = $(this).attr('href').replace('../email-builder/','../builder/email-builder/');
        $(this).attr('href', newurl);
    });

    allContent.find('.topbar img').each(function(){
        var newsrc = $(this).attr('src').replace('../../assets/','../assets/');
        $(this).attr('src', newsrc);
    });

    allContent.find('#page-builder').remove();
    allContent.find('.placeholder-handle').remove();
    allContent.find('.form-sortable-btn').remove();
    allContent.find('.export-page').remove();
    var pageHeader = allContent.find('.builder-wrapper .header');
    var pageRow = allContent.find('.builder-wrapper .row');
    allContent.find('.page-content').removeClass('page-builder');
    allContent.find('.page-content').removeAttr('style');
    allContent.find('.main-content').removeAttr('style');
    allContent.find('.sidebar').removeAttr('style');
    allContent.find('.sidebar .logopanel a').attr('href', 'index.html');
    allContent.find('.ui-droppable').removeClass('ui-droppable');
    allContent.find('.modal').remove();
    if (pageRow.parent().hasClass('builder-wrapper')) {
        pageRow.unwrap();
    }

    var pageFileUpload = allContent.find('.fileinput');
    if (pageFileUpload.length) {
        pageFileUpload.find('.fileinput-new').remove();
        pageFileUpload.find('.btn').remove();
        pageFileUpload.find('.text-center').remove();
        pageFileUpload.find('img').unwrap().unwrap().addClass('img-responsive');
    }

    if (pageRow.children().hasClass('placeholder-container')) {
        pageRow.children().children().unwrap();
        pageRow.children().children().unwrap();
        allContent.find('.placeholder-content').removeClass('placeholder-content');
    }
    allContent.find('#context-menu').remove();
    allContent.find('.sidebar').removeAttr('style');
    allContent.find('.sidebar-inner').removeClass('mCS_destroyed').removeClass('');
    allContent.find('.logopanel').removeAttr('style');
    allContent.find('.sidebar-top').removeAttr('style');
    allContent.find('.topbar').removeAttr('style');
    allContent.find('.main-content').removeAttr('style');
    allContent.find('.page-content').removeAttr('style');
    allContent.find('.placeholder-content-area').remove();
    customPageContent = allContent.html();

    $('#modal-export-page form input[type="hidden"]').remove();
    newInput = $('<input type="hidden" name="pages[index]" value="">');
    $('#modal-export-page form').prepend( newInput );
    newInput.val(adminHeader + customPageContent + quickviewSidebar + morphSearch + adminFooter);

});

$('.page-content').on('click', '#modal-export-page .export', function(e) {
    e.preventDefault();
    var fileName = $('.html-file-name').val();
    fileName = '';

    if (sidebarIsFixed == true) handleSidebarFixed();
    $('#modal-export-page').modal('hide');
    var tl = new TimelineLite();
    tl.to($('.step-theme'), 0.4, {
        css: {
            scaleX: 0.8,
            scaleY: 0.8,
            autoAlpha: 0,
            display: "none"
        },
        ease: Circ.easeInOut
    }, "step+=0.2").to($('.step-final'), 0.4, {
        css: {
            scaleX: 1,
            scaleY: 1,
            autoAlpha: 1,
            display: "block"
        },
        ease: Circ.easeInOut,
        onComplete: function() {
            docHeight = $(document).height();
            if (!$('body').hasClass('sidebar-light')) $sidebar.height(docHeight);
        }
    }, "step+=0.8");
});

/* Notifications, demo purpose */
function createBuilderNotif() {
    notifTimeout = 5000;
    notifContent1 = '<div class="alert alert-dark media fade in m-t-10 m-b-0"><div class="media-left"><i class="icon-bulb icon-circle"></i></div><div class="media-body width-100p"><h4 class="alert-title">Text edit</h4><p>Click on text in builder section to edit it.</p></div></div>';
    notifContent2 = '<div class="alert alert-dark media fade in m-t-10 m-b-0"><div class="media-left"><i class="icon-bulb icon-circle"></i></div><div class="media-body width-100p"><h4 class="alert-title">Reorder content</h4><p>You can reorder section by dragging it in top or bottom.</p></div></div>';
    notifContent3 = '<div class="alert alert-dark media fade in m-t-10 m-b-0"><div class="media-left"><i class="icon-bulb icon-circle"></i></div><div class="media-body width-100p"><h4 class="alert-title">Remove Content</h4><p>You can remove section by clicking on cross icon on the left of each section.</p></div></div>';
    setTimeout(function() {
        generateNotif(notifContent1);
        setTimeout(function() {
            generateNotif(notifContent2);
            setTimeout(function() {
                generateNotif(notifContent3);
            }, notifTimeout + 3000);
        }, notifTimeout + 3000);
    }, notifTimeout);
}

function generateNotif(content) {
    var position = 'bottomRight';
    if ($('body').hasClass('rtl')) position = 'bottomLeft';
    var n = noty({
        text: content,
        type: 'success',
        layout: position,
        theme: 'made',
        animation: {
            open: 'animated fadeIn',
            close: 'animated fadeOut'
        },
        timeout: notifTimeout,
        callback: {
            onShow: function() {
                $('#noty_bottomRight_layout_container, .noty_container_type_success').css('width', 350).css('bottom', 10);
            }
        }
    });
}