($)(function($){
	function onFloatLabelChangeInput() {
		var $p = $(this).closest('.field');
		if (this.value!=='') {
			// petite obligation car impossible de faire un sélecteur qui
			// change dynamiquement si le champ n'est pas vide
			// DOC http://stackoverflow.com/questions/8639282/notempty-css-selector-is-not-working

			$p.addClass('notEmpty');
		} else {
			$p.removeClass('notEmpty');
		}

		$p.closest('form').addClass('modified');
	}

	$(function() {
		$('.field').on('change input',':input',onFloatLabelChangeInput);
	});
})($);