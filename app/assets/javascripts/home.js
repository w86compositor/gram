$(function(){
	$(document).on('click', '.take-picture', function(e){
		e.preventDefault()
		$('.pic-form').find('.image-input input').trigger('click');
		$('#photobooth_image_challenge_type').val($(this).data('image-type'))
	})
	$(document).on('change', '.image-input input', function(e){
		$('.pic-form').find('form').submit()
	})
})
