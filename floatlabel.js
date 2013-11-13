$(function() {
	$('.field').on('change input',':input',function() {
		$p = $(this).closest('.field');
		if (this.value!=='') {
			$p.addClass('notEmpty');
		} else {
			$p.removeClass('notEmpty');
		}
		$p.closest('form').addClass('modified');
	});
});
