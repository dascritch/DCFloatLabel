	<form action="{{tpl:EntryURL}}#pr" method="post" id="comment-form">

		<tpl:IfCommentPreview>
			<div id="pr">
				<h3>{{tpl:lang Your comment}}</h3>
				<div class="comment-preview">{{tpl:CommentPreviewContent}}</div>
				<p class="buttons remember">
					<button class="preview" name="preview" id="preview" type="submit">{{tpl:lang send}}</button>
					<label class="form-help" for="preview">(votre texte sera publié après validation)</label>
				</p>
			</div>
		</tpl:IfCommentPreview>
				
		<h3>{{tpl:lang Add a comment}}</h3>

		<!-- # --BEHAVIOR-- publicCommentFormBeforeContent -->
		{{tpl:SysBehavior behavior="publicCommentFormBeforeContent"}}
			

		<fieldset id="comment-1stline">
			<p class="field">
				<input name="c_name" id="c_name" maxlength="255" required="required" type="text" placeholder="Nom ou pseudo&nbsp;:" />
				<label for="c_name">Nom ou pseudo&nbsp;:</label>
			</p>
			
			<p class="field" id="g_site">
				<input name="c_site" id="c_site" maxlength="255" type="url" placeholder="Site web (facultatif)&nbsp;:" />
				<label for="c_site">Site web (facultatif)&nbsp;:</label>
			</p>
		</fieldset>

		<fieldset id="comment-2ndline">
			<p class="field">
				<input name="c_mail" id="c_mail" maxlength="255" required="required" type="email" placeholder="Adresse e-mail&nbsp;:" />
				<label for="c_mail">Adresse e-mail&nbsp;:</label>
			</p>
			
			<p style="display:none">
				<input name="f_mail" maxlength="255" type="text" placeholder="Adresse e-mail&nbsp;:" />
			</p>
		</fieldset>

		<fieldset id="comment-3rdline">
			<p class="field">
				<textarea name="c_content" id="c_content" rows="7" required="required" placeholder="Commentaire&nbsp;:"></textarea>
				<label for="c_content">Commentaire&nbsp;:</label>
				<span class="form-help" id="form-help">Le code HTML est affiché comme du texte et les adresses web sont automatiquement transformées.</span>
			</p>
		</fieldset>
		
		<fieldset id="comment-4thline">
			<p class="remember">
				<button class="preview" name="preview" id="preview" type="submit">prévisualiser</button>
				<label class="form-help" for="preview">(votre texte sera publié après validation)</label>
			</p>
		</fieldset>
	</form>