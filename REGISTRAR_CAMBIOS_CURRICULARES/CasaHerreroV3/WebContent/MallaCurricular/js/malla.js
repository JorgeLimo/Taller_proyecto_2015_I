var misCursos = null;
var cursos = null;

$(document).ready(function() {
	$(".mencion").click(function() {
		comprobarMencion($(this));
	});
	cargarCursosAlumno();
});
function comprobarMencion(element) {
	if (!element.hasClass('active')) {
		$('.mencion').removeClass('active');
		element.addClass('active');
		var mencion = element.data('mencion');
		limpiarMalla();
		limpiarElectivosLibres();
		mostrarMencion(mencion);
	}
}
function limpiarMalla() {
	$('.curso').remove();
}
function limpiarElectivosLibres() {
	cont = "<tr><td colspan='2'>No hay cursos...</td></tr>";
	$("#otrosCursos").html(cont);
}
function mostrarMencion(mencion) {
	obtenerMencion(mencion);
	obtenerTrayectorias(mencion);
	dibujarTrayectorias();
}
function obtenerMencion(mencion) {
	var url = "../G2_Malla?action=obtenerMalla&mencion=" + mencion;
	console.log(url);
	$.ajax({
		url : url,
		type : "GET",
		success : function(data, textStatus, jqXHR) {
			var json = JSON.stringify(eval("(" + data + ")"));
			json = JSON.parse(json);
			cursos = json.cursos;
			console.log(cursos);
			dibujarCursos();
			if (misCursos != null) {
				resaltarCursos();
				// actualizarElectivosLibres();
			}
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("Error al intentar cargar los cursos aprobados...");
		}
	});
}
function obtenerTrayectorias(mencion) {

}
function dibujarCursos() {
	var c = 0;
	$.each(cursos, function(key, val) {
		var div = "";
		var clases = "";
		var destino = "";
		if (val.ciclo.charAt(0) == 'E') {
			clases = "curso tipo" + val.area + " mencionciclo";
			// destino=val.x;
			if (c < 3) {
				destino = "08";
			} else if (c < 6) {
				destino = "09";
			} else {
				destino = "10";
			}
			c++;
		} else {
			clases = "curso tipo" + val.area;
			destino = val.ciclo;
		}
		div = "<div class='" + clases + "' id='" + val.id
				+ "'><div class='creditos'>" + val.creditos + "</div><span>"
				+ val.nombre + "</span>";
		if (val.otrosrequisitos != 0) {
			div += "<div class='otrorequisito'>" + val.otrosrequisitos
					+ " créd.</div>";
		}

		div += "</div>";
		if (true) {
			$('#ciclo' + destino).append(div);
		}
	});
}
function dibujarTrayectorias() {

}
function resaltarCursos() {
	var ids = new Array();
	var nombres = new Array();
	$.each(misCursos, function(key, val) {
		var curHtml = $('#' + val.id);
		if (curHtml.length) {
			curHtml.addClass('resaltado');
		} else {
			ids.push(val.id);
			nombres.push(val.nombre);
		}
	});
	actualizarElectivosLibres(ids, nombres);
}
function actualizarElectivosLibres(ids, nombres) {
	var tam = ids.length;
	var cont = "";
	if (tam == 0) {
		cont = "<tr><td colspan='2'>No hay cursos...</td></tr>";
	} else {
		for (var int = 0; int < ids.length; int++) {
			cont += "<tr><td>" + ids[int] + "</td><td>" + nombres[int]
					+ "</td></tr>";
		}
	}
	$("#otrosCursos").html(cont);
}
function quitarResaltado() {
	$('.curso').removeClass('resaltado');
}
function cargarCursosAlumno() {
	$.ajax({
		url : "../G2_Malla",
		type : "GET",
		data : {
			action : 'obtenerMisCursos'
		},
		success : function(data, textStatus, jqXHR) {
			console.log(data);
			if (data.trim() != "-1") {
				var json = JSON.stringify(eval("(" + data + ")"));
				json = JSON.parse(json);
				misCursos = json.cursos;
			} else {
				alert("No haz aprobado ningun curso...");
			}
			mostrarMencion('E1');
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("Error al intentar cargar los cursos aprobados...");
		}
	});
}