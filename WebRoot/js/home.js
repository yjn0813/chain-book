
jQuery(function($){

	$('#mainBnr').slides({
		play: 3000, 
		hoverPause: true //­¢
	});

	
	var product = document.getElementById("carouselInner");
	var productLine = $("ul" , product);
	var boxSize = 500 ; 
	if(productLine.length <= 3 ){$(product).contents().clone().prependTo(product);}
	
	$(product).css("width",boxSize*$("#carouselInner ul.column").size()+"px");
	$("#carouselInner ul.column:last").prependTo(product);
	$(product).css("margin-left",-boxSize)
	$("#carouselPrev").click(function(){
		$("#carouselNext, #carouselPrev").hide();
		$(product).animate({
			marginLeft : parseInt($(product).css("margin-left"))+boxSize+"px"
		},"slow","swing" , 
		function(){
			$(product).css("margin-left",-boxSize)
			$("#carouselInner ul.column:last").prependTo(product);
			$("#carouselNext,#carouselPrev").show();
		});
	});
	$("#carouselNext").click(function(){
		$("#carouselNext,#carouselPrev").hide();
		$(product).animate({
			marginLeft : parseInt($(product).css("margin-left"))-boxSize+"px"
		},"slow","swing" , 
		function(){
			$(product).css("margin-left",-boxSize)
			$("#carouselInner ul.column:first").appendTo(product);
			$("#carouselNext,#carouselPrev").show();
		});
	});

});
