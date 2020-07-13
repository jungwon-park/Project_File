

$(function() {
	// total font
	$("*").css("font-family", "times new roman");
	$("input[name='btnCss']").css({
		'background-color' : 'black',
		'color' : 'white',
		'border' : '1px solid white',
		'font-size' : '0.7em'
	});
	var param = location.search.substr(location.search.indexOf("?") + 1);
	param = param.substr(4);
	//console.log(location.search);
/*	if (param=='addAuthorPubl') {
		$.ajax({
			url : '/web/addAuthorPubl.do',
			datatype : 'html',
			success : function(data) {

				$("div#contents").html(data);
			},
			error : function() {
				alert('error');
			}
		});
		param='';
	}*/

	$(".list-group-item").click(function() {
		if ($(this).text() == 'Total Publisher') {
			$.ajax({
				url : '/web/totalPublisher.do',
				datatype : 'html',
				success : function(data) {
					$("div#contents").html(data);
				},
				error : function() {
					alert('error');
				}
			});

		} else if ($(this).text() == 'Total Author') {
			$.ajax({
				url : '/web/totalAuthor.do',
				datatype : 'html',
				success : function(data) {

					$("div#contents").html(data);
				},
				error : function() {
					alert('error');
				}
			});

		} else if ($(this).text() == 'Add Book') {
			$.ajax({
				url : '/web/addBook.do',
				datatype : 'html',
				success : function(data) {

					$("div#contents").html(data);
				},
				error : function() {
					alert('error');
				}
			});
		} else if ($(this).text() == 'Add Publisher&Author') {
			$.ajax({
				url : '/web/addAuthorPubl.do',
				datatype : 'html',
				success : function(data) {

					$("div#contents").html(data);
				},
				error : function() {
					alert('error');
				}
			});
		} else if ($(this).text() == 'User List') {

			$.ajax({
				url : '/web/userList.do',
				datatype : 'html',
				success : function(data) {

					$("div#contents").html(data);
				},
				error : function() {
					alert('error');
				}
			});

		} else if ($(this).text() == 'Total Post') {
			$.ajax({
				url : '/web/totalPost.do',
				datatype : 'html',
				success : function(data) {

					$("div#contents").html(data);
				},
				error : function() {
					alert('error');
				}
			});
		} else if ($(this).text() == 'Total Book') {

			$.ajax({
				url : '/web/totalBook.do',
				datatype : 'html',
				success : function(data) {

					$("div#contents").html(data);
				},
				error : function() {
					alert('error');
				}
			});
		}

	});

}); // jQ load

