{************************************
***** Recover Password Template *****
*************************************}
<!-- recover_center.tpl -->
<div class="leftwrapper">
	{if $errorMsg ne ""}
		<div class="alert alert-block">
			<a class="close" data-dismiss="alert" href="#">&times;</a>
			{$errorMsg}
		</div>
	{/if}
	<div class="span4 left">
		<form action="recover.php" id="thisform2" method="post">
			<div class="control-group">	
				{if isset($form_password_error)}
					{ foreach value=error from=$form_password_error }
						<div class="alert">
							<button class="close" data-dismiss="alert">�</button>
							{$error}
						</div>
					{ /foreach }
				{/if}
				<label class="control-label">{#PLIGG_Visual_New_Password#}:</label>
				<div class="controls">
					<input type="password" id="reg_password" name="reg_password" value="" size="25" tabindex="14"/>
					<p class="help-inline">{#PLIGG_Visual_Register_FiveChar#}</p>
				</div>
			</div>
			<div class="control-group">	
				<label class="control-label">{#PLIGG_Visual_New_Verify_Password#}: </label>
				<div class="controls">
					<input type="password" id="reg_verify" name="reg_password2" value="" size="25" tabindex="15" />
				</div>
			</div>
			<div>	
				<input type="submit" value="Submit" class="btn btn-primary" tabindex="15" />
			</div>
			<input type="hidden" name="processrecover" value="1"/>
			<input type="hidden" name="id" value="{$id}"/>
			<input type="hidden" name="n" value="{$n}"/>
		</form>
	</div>
</div>
<!--/recover_center.tpl -->