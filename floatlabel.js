($)(function($){
	var tagIfEmpty = '.field';
	var markedEmpty = 'notEmpty';
	var tagIfModified = 'form';
	var markedModified = 'modified';

	function onFloatLabelChangeInput() {
		var $p = $(this).closest(tagIfEmpty);
		if (this.value!=='') {
			// petite obligation car impossible de faire un sélecteur qui
			// change dynamiquement si le champ n'est pas vide
			// DOC http://stackoverflow.com/questions/8639282/notempty-css-selector-is-not-working

			$p.addClass(markedEmpty);
		} else {
			$p.removeClass(markedEmpty);
		}

		$p.closest(tagIfModified).addClass(markedModified);
	}

	$(function() {
		$(tagIfModified).on('change input',tagIfEmpty+' :input',onFloatLabelChangeInput);
	});
})($);