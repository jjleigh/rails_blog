$("#comment-list").html("<%= escape_javascript(render(:partial =>  'articles/comments'))%>");
$("#comment-list").val('');