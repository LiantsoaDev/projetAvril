
 <footer id="footer-fix">
     <div id="footer-sidebar" class="footer-sidebar">
         <div class="navbar">
             <div class="btn-toolbar"> <a class="btn btn-glyph btn-link" href="javascript:void(0);"><i class="fontello-icon-up-open-1"></i></a> </div>
         </div>
     </div>
     <!-- // footer sidebar -->

     <div id="footer-content" class="footer-content">
         <div class="navbar navbar-inverse">
             <div class="navbar-inner">
                 <ul class="nav pull-left">
                     <li class="divider-vertical hidden-phone"></li>
                     <li><a id="btnToggleSidebar" class="btn-glyph fontello-icon-resize-full-2 tip hidden-phone" href="javascript:void(0);" title="show hide sidebar"></a></li>
                     <li class="divider-vertical hidden-phone"></li>
                     <li><a id="btnChangeSidebar" class="btn-glyph fontello-icon-login tip hidden-phone" href="javascript:void(0);" title="change sidebar position"></a></li>
                     <li class="divider-vertical"></li>
                     <li><a id="btnChangeSidebarColor" class="btn-glyph fontello-icon-palette tip" href="javascript:void(0);" title="change sidebar color"></a></li>
                     <li class="divider-vertical"></li>
                     <li><a class="btn-glyph fontello-icon-cw" href="javascript:void(0);"></a></li>
                     <li class="divider-vertical"></li>
                     <li><a class="fontello-icon-home-3" href="dashboard-one.html"></a></li>
                     <li class="divider-vertical"></li>
                 </ul>
                 <ul class="nav pull-right">
                     <li class="divider-vertical"></li>
                     <li><a class="btn-glyph fontello-icon-help-2 tip" href="javascript:void(0);" title="help to page"></a></li>
                     <li class="divider-vertical"></li>
                     <li><a class="btn-glyph fontello-icon-cog-4 tip" href="javascript:void(0);" title="settings app"></a></li>
                     <li class="divider-vertical"></li>
                      <li>
                            <a id="btnLogout" class="btn-glyph fontello-icon-logout-1 tip" title="logout" href="{{ route('logout') }}"
                                onclick="event.preventDefault();
                                            document.getElementById('logout-form').submit();">
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                {{ csrf_field() }}
                            </form>
                     </li>
                     <li class="divider-vertical"></li>
                     <li><a id="btnScrollup" class="scrollup btn-glyph fontello-icon-up-open-1" href="javascript:void(0);"><span class="hidden-phone">Scroll</span></a></li>
                 </ul>
             </div>
         </div>
     </div>
     <!-- // footer content -->

 </footer>
 <!-- // footer-fix  -->

</div>
<!-- // page-container  -->

<!-- Le javascript -->
<!-- Placed at the end of the document so the pages load faster -->
{!! helper_js('admin/js/lib/jquery') !!}
{!! helper_js('admin/js/lib/jquery-ui')!!}
{!! helper_js('admin/js/lib/jquery.cookie')!!}
{!! helper_js('admin/js/lib/jquery.date') !!}
{!! helper_js('admin/js/lib/jquery.mousewheel')!!}
{!! helper_js('admin/js/lib/jquery.load-image.min')!!}
{!! helper_js('admin/js/lib/bootstrap/bootstrap')!!}

<!-- Plugins Bootstrap -->
{!! helper_js('admin/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.min')!!}
{!! helper_js('admin/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5')!!}
{!! helper_js('admin/plugins/bootstrap-fuelux/all-fuelux.min')!!}
{!! helper_js('admin/plugins/bootstrap-datepicker/js/bootstrap-datepicker')!!}
{!! helper_js('admin/plugins/bootstrap-timepicker/js/bootstrap-timepicker')!!}
{!! helper_js('admin/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker')!!}
{!! helper_js('admin/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker')!!}
{!! helper_js('admin/plugins/bootstrap-daterangepicker/js/bootstrap-daterangepicker')!!}
{!! helper_js('admin/plugins/bootstrap-toggle-button/js/bootstrap-toggle-button')!!}
{!! helper_js('admin/plugins/bootstrap-fileupload/js/bootstrap-fileupload')!!}
{!! helper_js('admin/plugins/bootstrap-rowlink/js/bootstrap-rowlink')!!}
{!! helper_js('admin/plugins/bootstrap-progressbar/js/bootstrap-progressbar')!!}
{!! helper_js('admin/plugins/bootstrap-select/bootstrap-select')!!}
{!! helper_js('admin/plugins/bootstrap-multiselect/js/bootstrap-multiselect')!!}
{!! helper_js('admin/plugins/bootstrap-bootbox/bootbox.min')!!}
{!! helper_js('admin/plugins/bootstrap-modal/js/bootstrap-modalmanager')!!}
{!! helper_js('admin/plugins/bootstrap-modal/js/bootstrap-modal')!!}
{!! helper_js('admin/plugins/bootstrap-wizard/js/bootstrap-wizard.min')!!}
{!! helper_js('admin/plugins/bootstrap-wizard-2/js/bwizard-only.min')!!}
{!! helper_js('admin/plugins/bootstrap-image-gallery/js/bootstrap-image-gallery.min')!!}

<!-- Plugins Custom - Only example -->
{!! helper_js('admin/plugins/pl-extension/google-code-prettify/prettify') !!}

<!-- Plugins Custom - System -->
{!! helper_js('admin/plugins/pl-system/nicescroll/jquery.nicescroll.min')!!}
{!! helper_js('admin/plugins/pl-system/xbreadcrumbs/xbreadcrumbs')!!}

<!-- Plugins Custom - System info -->
{!! helper_js('admin/plugins/pl-system-info/qtip2/dist/jquery.qtip.min') !!}
{!! helper_js('admin/plugins/pl-system-info/gritter/js/jquery.gritter.min') !!}
{!! helper_js('admin/plugins/pl-system-info/notyfy/jquery.notyfy') !!}

<!-- Plugins Custom - Content -->
{!! helper_js('admin/plugins/pl-content/list/js/list.min') !!}
{!! helper_js('admin/plugins/pl-content/list/plugins/list.paging.min') !!}
{!! helper_js('admin/plugins/pl-content/jpages/js/jPages') !!}

<!-- Plugins Custom - Component -->
{!! helper_js('admin/plugins/pl-component/fullcalendar/fullcalendar.min') !!}
{!! helper_js('admin/plugins/pl-component/rangeslider/jqallrangesliders.min') !!}

<!-- Plugins Custom - Form -->
{!! helper_js('admin/plugins/pl-form/uniform/jquery.uniform.min')!!}
{!! helper_js('admin/plugins/pl-form/select2/select2.min') !!}
{!! helper_js('admin/plugins/pl-form/counter/jquery.counter') !!}
{!! helper_js('admin/plugins/pl-form/elastic/jquery.elastic') !!}
{!! helper_js('admin/plugins/pl-form/inputmask/jquery.inputmask') !!}
{!! helper_js('admin/plugins/pl-form/inputmask/jquery.inputmask.extensions') !!}
{!! helper_js('admin/plugins/pl-form/validate/js/jquery.validate.min') !!}
{!! helper_js('admin/plugins/pl-form/duallistbox/jquery.duallistbox.min') !!}

<!-- Plugins Custom - Gallery -->
{!! helper_js('admin/plugins/pl-gallery/nailthumb/jquery.nailthumb.1.1.min')!!}
{!! helper_js('admin/plugins/pl-gallery/nailthumb/showLoading/js/jquery.showLoading.min')!!}
{!! helper_js('admin/plugins/pl-gallery/wookmark/jquery.imagesloaded')!!}
{!! helper_js('admin/plugins/pl-gallery/wookmark/jquery.wookmark.min')!!}

<!-- Plugins Tables -->
{!! helper_js('admin/plugins/pl-table/datatables/media/js/jquery.dataTables')!!}
{!! helper_js('admin/plugins/pl-table/datatables/plugin/jquery.dataTables.plugins')!!}
{!! helper_js('admin/plugins/pl-table/datatables/plugin/jquery.dataTables.columnFilter')!!}

<!-- Plugins data visualization -->
{!! helper_js('admin/plugins/pl-visualization/sparkline/jquery.sparkline.min') !!}
{!! helper_js('admin/plugins/pl-visualization/easy-pie-chart/jquery.easy-pie-chart') !!}
{!! helper_js('admin/plugins/pl-visualization/percentageloader/percentageloader.min') !!}
{!! helper_js('admin/plugins/pl-visualization/knob/knob')!!}
{!! helper_js('admin/plugins/pl-visualization/flot/jquery.flot') !!}
{!! helper_js('admin/plugins/pl-visualization/flot/jquery.flot.categories') !!}
{!! helper_js('admin/plugins/pl-visualization/flot/jquery.flot.grow') !!}
{!! helper_js('admin/plugins/pl-visualization/flot/jquery.flot.orderBars') !!}
{!! helper_js('admin/plugins/pl-visualization/flot/jquery.flot.pie') !!}
{!! helper_js('admin/plugins/pl-visualization/flot/jquery.flot.resize') !!}
{!! helper_js('admin/plugins/pl-visualization/flot/jquery.flot.selection') !!}
{!! helper_js('admin/plugins/pl-visualization/flot/jquery.flot.stack') !!}
{!! helper_js('admin/plugins/pl-visualization/flot/jquery.flot.stackpercent') !!}
{!! helper_js('admin/plugins/pl-visualization/flot/jquery.flot.time') !!}




<!-- main js -->
{!! helper_js('admin/js/core')!!}
{!! helper_js('admin/js/application')!!}
<!-- Only This Demo Page -->
{!! helper_js('admin/js/demo/demo-jquery.dataTables')!!}

<!-- Only This Demo Page -->

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA48VeOmkB_L-TWKjgCknG92lDw21mOLvo&callback=myMap"></script>


<script type="text/javascript">
$(document).ready(function () {
     /* initiate plugin jPage */
     $("ul.holder").jPages({
             containerID: "gallery",
             perPage: 12,
             previous: "previous",
             next: "next",
             callback: function (pages, items) {
                     $("#legend2").html(items.range.start + " - " + items.range.end + " of " + items.count);
             }
     });

     /* on select change */
     $("#showItem").change(function () {
             var newPerPage = parseInt($(this).val());
             $("ul.holder").jPages("destroy").jPages({
                     containerID: "gallery",
                     perPage: newPerPage
             });
     });

     $('#gallery .nailthumb-container.show-loading').nailthumb({
             titleWhen: 'hover',
             animationTime: 3000,
             replaceAnimation: 'fade',
             imageFromWrappingLink: true,
             onStart: function (container) {
                     container.showLoading({
                             'overlayWidth': 30, //null
                             'overlayHeight': 30 //null
                     });
             },
             onFinish: function (container) {
                     container.hideLoading();
             }
     });

     $("#gallery a.edit").click(function () {
             $("#previewImage").html($("<img>").attr("src", this.href));
             return false;

     });

     // Start slideshow button:
     $('#start-slideshow').button().click(function () {
             var options = $(this).data(),
                     modal = $(options.target),
                     data = modal.data('modal');
             if(data) {
                     $.extend(data.options, options);
             }
             else {
                     options = $.extend(modal.data(), options);
             }
             modal.find('.modal-slideshow').find('i')
                     .removeClass('fontello-icon-play')
                     .addClass('fontello-icon-pause');
             modal.modal(options);
     });

     // Toggle fullscreen button:
     $('#toggle-fullscreen').button().click(function () {
             var button = $(this),
                     root = document.documentElement;
             if(!button.hasClass('active')) {
                     $('#modal-gallery').addClass('modal-fullscreen');
                     if(root.webkitRequestFullScreen) {
                             root.webkitRequestFullScreen(
                             window.Element.ALLOW_KEYBOARD_INPUT);
                     }
                     else if(root.mozRequestFullScreen) {
                             root.mozRequestFullScreen();
                     }
             }
             else {
                     $('#modal-gallery').removeClass('modal-fullscreen');
                     (document.webkitCancelFullScreen || document.mozCancelFullScreen || $.noop).apply(document);
             }
     });

     // Only demo form Tag
     var fileTagData = [{
             id: "Storm",
             text: "Storm"
     }, {
             id: "Scenic",
             text: "Scenic"
     }, {
             id: "Lakes",
             text: "Lakes"
     }, {
             id: "Rivers",
             text: "Rivers"
     }, {
             id: "Forest",
             text: "Forest"
     }, {
             id: "Flowers",
             text: "Flowers"
     }]
     $("#fileTag").select2({
             tags: fileTagData,
             createSearchChoice: function (term, data) {
                     if($(data).filter(function () {
                             return this.text.localeCompare(term) === 0;
                     }).length === 0) {
                             return {
                                     id: term,
                                     text: term
                             };
                     }
             },
             width: "100%",
             multiple: true,
             placeholder: "select or enter tag",
             tokenSeparators: [",", " "]
     });
});
</script>


<!-- Only This Demo Page -->
{!! helper_js('admin/js/demo/demo-wisyhtml5')!!}
{!! helper_js('admin/js/demo/d3')!!}
<script>
$(function() {
     $.configureBoxes({selectOnSubmit: false});
     $.configureBoxes({
         box1View: 'box3View',
         box1Storage: 'box3Storage',
         box1Filter: 'box3Filter',
         box1Clear: 'box3Clear',
         box1Counter: 'box3Counter',
         box2View: 'box4View',
         box2Storage: 'box4Storage',
         box2Filter: 'box4Filter',
         box2Clear: 'box4Clear',
         box2Counter: 'box4Counter',
         to1: 'to3',
         to2: 'to4',
         allTo1: 'allTo3',
         allTo2: 'allTo4',
         selectOnSubmit: false
     });
     $.configureBoxes({
         box1View: 'box5View',
         box1Storage: 'box5Storage',
         box1Filter: 'box5Filter',
         box1Clear: 'box5Clear',
         box1Counter: 'box5Counter',
         box2View: 'box6View',
         box2Storage: 'box6Storage',
         box2Filter: 'box6Filter',
         box2Clear: 'box6Clear',
         box2Counter: 'box6Counter',
         to1: 'to5',
         to2: 'to6',
         allTo1: 'allTo5',
         allTo2: 'allTo6',
         selectOnSubmit: false
     });/**/
     });
</script>
</body>
</html>
