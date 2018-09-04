/* ============================================================
 * Layout Script
 =========================================================== */
 var  $logopanel     = $('.logopanel');
 var  $topbar        = $('.topbar');
 var  $sidebar       = $('.sidebar');
 var  $sidebarFooter = $('.sidebar-footer');

/****  Initiation of Main Functions  ****/
$(document).ready(function() {
    
    handleboxedLayout();
    setTimeout(function() {
        handleboxedLayout();
    }, 100);

    $('[data-toggle]').on('click', function(event) {
        event.preventDefault();
        var toggleLayout = $(this).data('toggle');
        if (toggleLayout == 'sidebar-behaviour') toggleSidebar();
        if (toggleLayout == 'boxed') toggleboxedLayout();
        if (toggleLayout == 'topbar') toggleTopbar();
        if (toggleLayout == 'sidebar-collapsed') collapsedSidebar();
    });

});

/****  Resize Event Functions  ****/
$(window).resize(function() {
    setTimeout(function() {
        handleboxedLayout();
    }, 100);
});


/* ==========================================================*/
/* LAYOUTS API                                                */
/* ========================================================= */

/* Create Sidebar Fixed */
function handleSidebarFixed() {
    $('#switch-sidebar').prop('checked', true);
    $('#switch-submenu').prop('checked', false);
    $.removeCookie('submenu-hover');
    if ($('body').hasClass('sidebar-top')) {
        $('body').removeClass('fixed-topbar').addClass('fixed-topbar');
        $.removeCookie('fluid-topbar');
        $('#switch-topbar').prop('checked', true);
    }
    $('body').removeClass('fixed-sidebar').addClass('fixed-sidebar');
    $('.sidebar').height('');
    handleboxedLayout();
    createSideScroll();
    $.removeCookie('fluid-sidebar');
    $.cookie('fixed-sidebar', 1);
}

/* Create Sidebar Fluid / Remove Sidebar Fixed */
function handleSidebarFluid() {
    $('#switch-sidebar').prop('checked', false);
    if ($('body').hasClass('sidebar-hover')) {
        $('#switch-sidebar-hover').prop('checked', false);
    }
    $('body').removeClass('fixed-sidebar');
    handleboxedLayout();
    destroySideScroll();
    $.removeCookie('fixed-sidebar');
    $.cookie('fluid-sidebar', 1);
    $.cookie('fluid-sidebar', 1);
}

/* Toggle Sidebar Fixed / Fluid */
function toggleSidebar() {
    if ($('body').hasClass('fixed-sidebar')) handleSidebarFluid();
    else handleSidebarFixed();
}

/* Create Topbar Fixed */
function handleTopbarFixed() {
    $('#switch-topbar').prop('checked', true);
    $('body').removeClass('fixed-topbar').addClass('fixed-topbar');
    $.removeCookie('fluid-topbar');
}

/* Create Topbar Fluid / Remove Topbar Fixed */
function handleTopbarFluid() {
    $('#switch-topbar').prop('checked', false);
    $('body').removeClass('fixed-topbar');
    if ($('body').hasClass('sidebar-top') && $('body').hasClass('fixed-sidebar')) {
        $('body').removeClass('fixed-sidebar');
        $('#switch-sidebar').prop('checked', false);
    }
    $.cookie('fluid-topbar', 1);
}

/* Toggle Topbar Fixed / Fluid */
function toggleTopbar() {
    if ($('body').hasClass('fixed-topbar')) handleTopbarFluid();
    else handleTopbarFixed();
}

/* Adjust margin of content for boxed layout */
function handleboxedLayout() {

    if ($('body').hasClass('builder-admin')) return;
    $logopanel.css('left', '').css('right', '');
    $topbar.css('width', '');
    $sidebar.css('margin-left', '').css('margin-right', '');
    $sidebarFooter.css('left', '').css('right', '');
    if ($('body').hasClass('boxed')) {
        windowWidth = $(window).width();
        windowHeight = $(window).height();
        $('.page-content').height('');
        pageContentHeight = $('.page-content').height();
        var container = 1200;
        var margin = (windowWidth - 1200) / 2;
        if (!$('body').hasClass('sidebar-top') && windowWidth > 1220)  {
            if(!$('body').hasClass('fixed-sidebar')){
                if(pageContentHeight < $(document).height()){
                    setTimeout(function(){
                        $('.page-content').height($(document).height());
                    },100);
                } 
            }
            else{
                if(pageContentHeight < windowHeight) {
                    $('.page-content').height(windowHeight);
                }
            }
            $logopanel.css('left', margin);
            if ($('body').hasClass('sidebar-collapsed')) {
                $topbar.css('width', 1200);
            }
            else {
                topbarWidth = (1200 - $sidebarWidth);
                $sidebarFooter.css('left', margin);
                if ($('body').hasClass('fixed-sidebar')) {
                    $sidebar.css('margin-left', margin);
                    $('.topbar').css('width', topbarWidth);
                }
                if($('body').hasClass('sidebar-light')){
                    $topbar.css('width', 960);
                }
                else{
                    $topbar.css('width', topbarWidth);
                }
            }
        }
        $.backstretch(["../assets/global/images/gallery/bg1.jpg", "../assets/global/images/gallery/bg2.jpg", "../assets/global/images/gallery/bg3.jpg", "../assets/global/images/gallery/bg4.jpg"], 
        {duration: 4000, fade: 600});
    
    }
}

/* Create Boxed Layout */
function createBoxedLayout() {
    $('body').addClass('boxed');
    handleboxedLayout();
    $('#switch-boxed').prop('checked', true);
    $.cookie('boxed-layout', 1);
}

/* Remove boxed layout */
function removeBoxedLayout() {
    if ($('body').hasClass('boxed')) {
        $('body').removeClass('boxed');
        $logopanel.css('left', '').css('right', '');
        $topbar.css('width', '');
        $sidebar.css('margin-left', '').css('margin-right', '');
        $sidebarFooter.css('left', '').css('right', '');
        $.removeCookie('boxed-layout');
        $('#switch-boxed').prop('checked', false);
        $('.backstretch').remove();
    }
}

/* Remove Sidebar on Hover */
function removeSidebarHover() {
    $('#switch-sidebar-hover').prop('checked', false);
    $('body').removeClass('sidebar-hover');
    if (!$('body').hasClass('boxed')) $('.sidebar, .sidebar-footer').attr('style', '');
    $('.logopanel2').remove();
    $.removeCookie('sidebar-hover');
}

function toggleboxedLayout() {
    if ($('body').hasClass('boxed')) removeBoxedLayout();
    else createBoxedLayout();
}

/* Toggle Sidebar Collapsed */
function collapsedSidebar() {
    if ($body.css('position') != 'relative') {
        if (!$body.hasClass('sidebar-collapsed')) createCollapsedSidebar();
        else removeCollapsedSidebar();
    } else {
        if ($body.hasClass('sidebar-show')) $body.removeClass('sidebar-show');
        else $body.addClass('sidebar-show');
    }
    handleboxedLayout();
}

/* Reset to Default Style, remove all cookie and custom layouts */
function resetStyle() {
    $('#reset-style').on('click', function(event) {
        event.preventDefault();
        removeBoxedLayout();
        $.removeCookie('main-color');
        $.removeCookie('main-name');
        $.removeCookie('theme');
        $.removeCookie('bg-name');
        $.removeCookie('bg-color');
        $.removeCookie('submenu-hover');
        $.removeCookie('sidebar-collapsed');
        $.removeCookie('boxed-layout');
        $.removeCookie('sidebar-hover');
        $.removeCookie('sidebar-hover', { path: '/'});
        $.removeCookie('main-color', { path: '/'});
        $.removeCookie('main-name', { path: '/'});
        $.removeCookie('theme', { path: '/'});
        $.removeCookie('bg-name', { path: '/'});
        $.removeCookie('bg-color', { path: '/'});
        $.removeCookie('boxed-layout', { path: '/'});
        $('body').removeClass(function(index, css) {
            return (css.match(/(^|\s)bg-\S+/g) || []).join(' ');
        });
        $('body').removeClass(function(index, css) {
            return (css.match(/(^|\s)color-\S+/g) || []).join(' ');
        });
        $('body').removeClass(function(index, css) {
            return (css.match(/(^|\s)theme-\S+/g) || []).join(' ');
        });
        $('body').addClass('theme-sdtl').addClass('color-default');
        $('.builder .theme-color').removeClass('active');
        $('.theme-color').each(function() {
            if ($(this).data('color') == '#319DB5') $(this).addClass('active');
        });
        $('.builder .theme').removeClass('active');
        $('.builder .theme-default').addClass('active');
        $('.builder .sp-replacer').removeClass('active');
    });
}

/******************** END LAYOUT API  ************************/
/* ========================================================= */