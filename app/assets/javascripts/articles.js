function toggleLike(article_id) {
	$.ajax({
      method: 'post',
      url: '/toggle_like?id=' + article_id,
      dataType: "json",
      success: function(response) {
      	if (response['liked']) {
  				$('#article_icon_' + article_id).addClass('liked')		
      	}
      	else {
      		$('#article_icon_' + article_id).removeClass('liked')		
      	}
      }
    })
}

function handleHeartNotLogin(current_user) {
  if (!current_user) {
    $('#new_session_modal').modal('show')
  }
}
