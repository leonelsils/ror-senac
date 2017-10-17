
$( document ).ready(function(){
/*    jQuery(function(){
        $('#camera_wrap').camera({
            pagination: false,
            thumbnails: false,
            hover: false,
            opacityOnGrid: false,
        });

    });
    */
    $(".button-collapse").sideNav();
    $('select').material_select();

    setTimeout(function(){
    	$('.alert').hide('slow');
    }, 4000);
})