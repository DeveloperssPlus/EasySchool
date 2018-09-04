$(document).ready(function() {
    $('.email-sidebar').on('click', 'a', function(e){
        e.preventDefault();
        href = $(this).attr('href');
        href = href.substring(1);
        $('.email-template').removeClass('active');
        $('#'+href).addClass('active');
        $('.email-sidebar a').removeClass('active');
        $(this).addClass('active');
        $('.email-templates iframe').each(function(){
          if(this.contentWindow.document.body) this.style.height = this.contentWindow.document.body.offsetHeight + 'px';
        });
    });

    $('.responsive').on('click', 'a', function(e){
        e.preventDefault();
        href = $(this).attr('href');
        href = href.substring(1);
        var widthEmail = "100%";
        if(href == "phone") widthEmail = 320;
        if(href == "tablet") widthEmail = 600;
        if(href == "desktop") widthEmail = "100%";
        $('.responsive a').removeClass('active');
        $(this).addClass('active');
        $( ".email-content" ).css('width', widthEmail);
        $('.email-templates iframe').each(function(){
            if(href == "phone") this.contentWindow.document.body.style.width = '320px';
            if(href == "tablet") this.contentWindow.document.body.style.width = '600px';
            if(href == "desktop") this.contentWindow.document.body.style.width = '100%';
            this.style.height = this.contentWindow.document.body.offsetHeight + 'px';
        });
    });

    $('iframe').load(function() {
        $('.email-templates iframe').each(function(){
          if(this.contentWindow.document.body) this.style.height = this.contentWindow.document.body.offsetHeight + 'px';
        });
    });

});