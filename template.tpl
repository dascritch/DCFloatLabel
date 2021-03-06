<tpl:EntryIf comments_active="1">    
	<tpl:SysIfFormError>
		<p class="error" id="pr">{{tpl:SysFormError}}</p>
	</tpl:SysIfFormError>
	
	<tpl:SysIfCommentPublished>
		<p class="message" id="pr">{{tpl:lang Your comment has been published.}}</p>
	</tpl:SysIfCommentPublished>
	
	<tpl:SysIfCommentPending>
		<p class="message" id="pr">{{tpl:lang Your comment has been submitted and will be reviewed for publication.}}</p>
	</tpl:SysIfCommentPending>
	
	<!-- # Comment form -->
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
				<input name="c_name" id="c_name" maxlength="255" required="required" type="text" placeholder="{{tpl:lang Name or nickname}}&nbsp;:" value="{{tpl:CommentPreviewName encode_html="1"}}" />
				<label for="c_name">{{tpl:lang Name or nickname}}&nbsp;:</label>
			</p>
			
			<p class="field" id="g_site">
				<input name="c_site" id="c_site" maxlength="255" type="url" placeholder="http://{{tpl:lang Website}} ({{tpl:lang optional}})&nbsp;:" value="{{tpl:CommentPreviewSite encode_html="1"}}" />
				<label for="c_site">http://{{tpl:lang Website}} ({{tpl:lang optional}})&nbsp;:</label>
			</p>
		</fieldset>

		<fieldset id="comment-2ndline">
			<p class="field">
				<input name="c_mail" id="c_mail" maxlength="255" required="required" type="email" placeholder="{{tpl:lang Email address}}&nbsp;:" value="{{tpl:CommentPreviewEmail encode_html="1"}}" />
				<label for="c_mail">{{tpl:lang Email address}}&nbsp;:</label>
			</p>
			
			<p style="display:none">
				<input name="f_mail" id="f_mail" maxlength="255" type="text" placeholder="{{tpl:lang Email address}}" />
				<label for="f_mail">{{tpl:lang Email address}}&nbsp;:</label>
			</p>
		</fieldset>

		<fieldset id="comment-3rdline">
			<p class="field">
				<textarea name="c_content" id="c_content" rows="7" required="required" placeholder="{{tpl:lang Comment}}&nbsp;:">{{tpl:CommentPreviewContent raw="1" encode_html="1"}}</textarea>
				<label for="c_content">{{tpl:lang Comment}}&nbsp;:</label>
				<span class="form-help" id="form-help">{{tpl:CommentHelp}}</span>
			</p>
		</fieldset>
		
		<!-- # --BEHAVIOR-- publicCommentFormAfterContent -->
		{{tpl:SysBehavior behavior="publicCommentFormAfterContent"}}
		
		<fieldset id="comment-4thline">
			<p class="remember" data-remember="{{tpl:lang Remember me on this blog}}">
				<button class="preview" name="preview" id="preview" type="submit">{{tpl:lang preview}}</button>
				<tpl:IfPreviewIsNotMandatory>
					<button class="preview" name="preview" id="preview" type="submit">{{tpl:lang send}}</button>
				</tpl:IfPreviewIsNotMandatory>
				<label class="form-help" for="preview">(votre texte sera publié après validation)</label>
			</p>
		</fieldset>
	</form>
</tpl:EntryIf>