/**
 * 
 */


$(document).ready(function(){
	// Date Format
	$(".dateMask").mask("00/00/0000");
	$(".dateHourMask").mask("00/00/0000 00:00:00");
	
	// cellphone format
	var SPMaskBehavior = function celMask(val) {
		  return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
		},
		spOptions = {
		  onKeyPress: function(val, e, field, options) {
		      field.mask(SPMaskBehavior.apply({}, arguments), options);
		    }
		};

	$('.celMask').mask(SPMaskBehavior, spOptions);
	$('.phoneMask').mask("(00) 0000-0000"); 
	$('.valueMask').mask('000.000.000.000.000,00', {reverse: true});
	
	// DatePicker 
	$(".datePicker").datepicker({ 
		placement: "bottom",
		dateFormat: 'dd/mm/yy',
	    dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado'],
	    dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
	    dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
	    monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
	    monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
	    nextText: 'Próximo',
	    prevText: 'Anterior'
	});
});


var temp_communicationText = [
		"Anim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliquaAnim pariatur cliche reprehenderit,enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua",
		"Presentation text refering to the communication 'Comunicado importante' with the purpose of showing us the behavior and differences of the cutted texts and the full text that has been shown in this form.",
		"Dear students, as we have spoken last class, we are going to have our test on next friday 09/05/2014 at 7:00pm. Study, or tears will drop. Just kidding... or not. Remember those stundents whose are always late that if someone leaves the class during the test, no one can enter afterwards. Thanks and have a good study."];

$("#logintest").click(function() {
	alert('Função em desenvolvimento...');
});



function communicationPanel_Load(){
	for ( var i = 1; i <= temp_communicationText.length; i++) {
		$("#communicationPanel").append(
						"<div class='communication-div' id='communication"+ i+ "' onclick='showCommunication($(this));'>"
						+ "<img src='img/fatec.png' alt='Not Found' id='communicationImage'/>"
						+ "<span id='communicationTitle'>Título do Comunicado "+i+ "</span><br>"
						+ "<span id='communicationText'>"+ temp_communicationText[i - 1] + "</span>"
						+ "</div>"
		);
	}
}

function adjustEventTitle() {
	for ( var i = 1; i <= $(".event-panel .accordion-heading").length; i++) {
		if ($("#eventHeading" + i).text().length > 20) {
			$("#eventHeading" + i).text( $("#eventHeading" + i).text().substr(0, 30)+ " ...");
			$("#eventHeading" + i).title = $("#eventHeading" + i).text();
			$("#eventHeading" + i).tooltip({
				placement : "bottom"
			});
		}
	}
}

function adjustEventText() {
	var text_substr;
	for ( var i = 1; i <= $(".event-panel .accordion-body").length; i++) {
		if ($("#collapseEvent"+i+ " .accordion-inner p").text().length > 500) {
			
			text_substr = $("#collapseEvent" +i+ " .accordion-inner p").text(
					$("#collapseEvent" +i+ " .accordion-inner p").text().substr(0, 500)
			);
			
			text_substr = text_substr.append("<a href='#'> Ver mais...</a>");
			
		}
	}
}

function adjustOppTitle() {
	for ( var i = 1; i <= $(".opp-panel .accordion-heading").length; i++) {
		if ($("#oppHeading" + i).text().length > 20) {
			$("#oppHeading" + i).text( $("#oppHeading" + i).text().substr(0, 30)+ " ...");
			$("#oppHeading" + i).title = $("#oppHeading" + i).text();
			$("#oppHeading" + i).tooltip({	
				placement : "bottom"
			});
		}
	}
}

function adjustOppText() {
	var text_substr;
	
	for ( var i = 1; i <= $(".opp-panel .accordion-body").length; i++) {
		if ($("#collapseOpp"+i+ " .accordion-inner p").text().length > 500) {
			
			text_substr = $("#collapseOpp" +i+ " .accordion-inner p").text(
				$("#collapseEvent" +i+ " .accordion-inner p").text().substr(0, 500)
			);
	
			text_substr = text_substr.append("<a href='#'> Ver mais...</a>"); 
			
		}
	}
}
		
function adjustCommunicationTitle(){
				for ( var i = 1; i <= $(".communication-panel .communication-div").length; i++) {
		if ($("#communication" +i+ "#communicationTitle").text().length > 25) {
			$("#communication" + i + " #communicationTitle").text(
					$("#communication" + i + " #communicationTitle").text().substr(0, 25)+ " ...");
		}
	}
}

function adjustCommunicationText() {
	for ( var i = 1; i <= $(".communication-panel .communication-div").length; i++) {
		if ($("#communication" + i).text().length > 60) {
			$("#communication" + i + " #communicationText").text(
					$("#communication" + i + " #communicationText")
							.text().substr(0, 165)
							+ " ...");
		}
	}
}

function login() {
	$("#loginModal").removeClass("hidden");
	$("#loginModal").dialog({
		title : "Login",
		resizable : false,
		height : 330,
		width : 450,
		modal : true,
		show : {
			effect : "fade"
		},
		hide : {
			effect : "fade"
		}
	});
	
	$(".ui-dialog .ui-dialog-titlebar a span").text("");
	$(".ui-dialog .ui-dialog-titlebar a span").removeClass();
	$(".ui-dialog .ui-dialog-titlebar a span").addClass("icon-remove");
}


function userModal() {
	$("#userModal").removeClass("hidden");
	$("#userModal").dialog({
		title : "Incluir Usuário",
		resizable : false,
		height : 550,
		width : 720,
		modal : true,
		show : {
			effect : "fade"
		},
		hide : {
			effect : "fade"
		}
	});
	
	$(".ui-dialog .ui-dialog-titlebar a span").text("");
	$(".ui-dialog .ui-dialog-titlebar a span").removeClass();
	$(".ui-dialog .ui-dialog-titlebar a span").addClass("icon-remove");
}

function communicationModal() {
	$("#communicationModal").removeClass("hidden");
	$("#communicationModal").dialog({
		title : "Incluir Comunicado",
		resizable : false,
		height : 550,
		width : 720,
		modal : true,
		show : {
			effect : "fade"
		},
		hide : {
			effect : "fade"
		}
	});
	
	$(".ui-dialog .ui-dialog-titlebar a span").text("");
	$(".ui-dialog .ui-dialog-titlebar a span").removeClass();
	$(".ui-dialog .ui-dialog-titlebar a span").addClass("icon-remove");
}

function eventModal() {
	$("#eventModal").removeClass("hidden");
	$("#eventModal").dialog({
		title : "Incluir Evento",
		resizable : false,
		height : 650,
		width : 650,
		modal : true,
		show : {
			effect : "fade"
		},
		hide : {
			effect : "fade"
		}
	});
	
	$(".ui-dialog .ui-dialog-titlebar a span").text("");
	$(".ui-dialog .ui-dialog-titlebar a span").removeClass();
	$(".ui-dialog .ui-dialog-titlebar a span").addClass("icon-remove");
}

function opportunityModal() {
	$("#opportunityModal").removeClass("hidden");
	$("#opportunityModal").dialog({
		title : "Incluir Oportunidade",
		resizable : false,
		height : 650,
		width : 650,
		modal : true,
		show : {
			effect : "fade"
		},
		hide : {
			effect : "fade"
		}
	});
	
	$(".ui-dialog .ui-dialog-titlebar a span").text("");
	$(".ui-dialog .ui-dialog-titlebar a span").removeClass();
	$(".ui-dialog .ui-dialog-titlebar a span").addClass("icon-remove");
}



function showCommunication(comunicado) {
	$("#communicationModal").removeClass("hidden");
	
	/*$("userImage").source(comunicado.getElementById("communicationImage").src);*/
	$("#communicationModalText").text(
			temp_communicationText[comunicado.attr("id").substr(
					comunicado.attr("id").length - 1,
					comunicado.attr("id").length) - 1]);
	
	$("#communicationModal").dialog({
		title : comunicado.children("#communicationTitle").text(),
		resizable : false,
		height : 330,
		width : 650,
		modal : true,
		show : {
			effect : "fade"
		},
		hide : {
			effect : "fade"
		}				
	});
	
	$(".ui-dialog .ui-dialog-titlebar a span").text("");
	$(".ui-dialog .ui-dialog-titlebar a span").removeClass();
	$(".ui-dialog .ui-dialog-titlebar a span").addClass("icon-remove");
	
}

function main_bodyLoad() {
	communicationPanel_Load();
	
	/* Fun��es para ajustes de textos. */
	adjustEventTitle();
	adjustEventText();
	adjustOppTitle();
	adjustOppText();
	adjustCommunicationTitle();
	adjustCommunicationText();
}
