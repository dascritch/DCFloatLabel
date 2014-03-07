($)(function($){
	var tagIfEmpty = '.field';
	var markedNotEmpty = 'notEmpty';
	var tagIfModified = 'form';
	var markedModified = 'modified';

	function onFloatLabelChangeInput() {
		var $p = $(this).closest(tagIfEmpty);
		if (this.value!=='') {
			// petite obligation car impossible de faire un sélecteur qui
			// change dynamiquement si le champ n'est pas vide
			// DOC http://stackoverflow.com/questions/8639282/notempty-css-selector-is-not-working

			$p.addClass(markedNotEmpty);
		} else {
			$p.removeClass(markedNotEmpty);
		}

		$p.closest(tagIfModified).addClass(markedModified);
	}

	$(tagIfModified).on('change input',tagIfEmpty+' :input',onFloatLabelChangeInput);


	/*  ré-écriture du post.js système remember de dotclear */

	var $commentform = $('#comment-form');
	if ($commentform) {
		var c_name = document.getElementById('c_name');
		var c_mail = document.getElementById('c_mail');
		var c_site = document.getElementById('c_site');

		function setCookie () {
			var name = c_name.value;
			var mail = c_mail.value;
			var site = c_site.value;
			var cpath = $('link[rel=top]').attr('href');
			cpath = (!cpath) ? '/' : cpath.replace(/.*:\/\/[^\/]*([^?]*).*/g,"$1");
			$.cookie('comment_info', name+'\n'+mail+'\n'+site, {expires:60,path:cpath});
		}
		function dropCookie(){
			$.cookie('comment_info','',{expires:-30,path:'/'});
		}
		function readCookie(c){
			if (!c) {
				return false;
			}
			var s=c.split('\n');
			if (s.length!==3) {
				dropCookie();
				return false;
			}
			return s;
		}

		var $latestp = $('button[name="preview"]',$commentform).closest('p');
		var post_remember_str = $latestp.data('remember');
		$latestp.append('<input type="checkbox" id="c_remember" name="c_remember" /> '+'<label for="c_remember">'+post_remember_str+'</label>');
		var $remember = $('#c_remember');

		var cookie=readCookie($.cookie('comment_info'));
		if (cookie !== false) {
	    	c_name.value = cookie[0];
	    	c_mail.value = cookie[1];
	    	c_site.value = cookie[2];
	    	$remember.prop('checked',true);
			$('#c_name, #c_mail, #c_site').closest(tagIfEmpty).addClass(markedNotEmpty);
	    }
		$remember.on('click',function(){
			if (this.checked) {
				setCookie();
			} else {
				dropCookie();
			}
		}
		);
		$commentform.on('change','#c_name, #c_mail, #c_site',function(){
			if ($remember.get(0).checked) {
				setCookie();
			}
		});
	}

})($);