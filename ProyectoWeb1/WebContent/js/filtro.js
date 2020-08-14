/**
 * 
 */
$(function () {
    $('.filter').click(function () {
        $(this).addClass('active').siblings().removeClass('active');
        let valor = $(this).attr('data-nombre');
        if (valor == 'todos') {
            $('.cont-work').show('1000');
        } else {
            $('.cont-work').not('.' + valor).hide('1000');
            $('.cont-work').filter('.' + valor).show('1000');
        }
    });

    let inicio = $('#iniciar_registrar').offset().top,
        equipo = $('#colaboradores').offset().top,
        trabajo = $('#articulos').offset().top,
        contacto = $('#contacto').offset().top;

    window.addEventListener('resize', function(){
        let inicio = $('#iniciar_registrar').offset().top,
        equipo = $('#colaboradores').offset().top,
        trabajo = $('#articulos').offset().top,
        contacto = $('#contacto').offset().top;
    });

    $('#enlace-inicio').on('click', function(e){
        e.preventDefault();
        $('html, body').animate({
            scrollTop: inicio -100
        },600);
    });

    $('#enlace-colaboradores').on('click', function(e){
        e.preventDefault();
        $('html, body').animate({
            scrollTop: equipo -100
        },600);
    });
    
    $('#enlace-articulos').on('click', function(e){
        e.preventDefault();
        $('html, body').animate({
            scrollTop: trabajo -100
        },600);
    });

    $('#enlace-contacto').on('click', function(e){
        e.preventDefault();
        $('html, body').animate({
            scrollTop: contacto -100
        },600);
    });
});