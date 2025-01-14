</div>
</div>

<div class="silkyFooter">
<div class="footer-top">
		<div class="footerContainer">
			<div class="right">
				<a href="#"><i class="fab fa-discord"></i></a>
				<a href="#"><i class="fab fa-twitter"></i></a>
				<a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-twitch"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
			</div>
		</div>
	</div>
<div class="footer-bottom">
		<div class="footerContainer">
			<div class="left copyright">
				<h3>Lorem Ipsum</h3>
				<p>© 2024, All rights reserved.</p>
			</div>
			<div class="right watermark">
                <img src="https://cdn.discordapp.com/attachments/806911374852751360/1116852154053963826/copyright.png">
                </a>
			</div>
		</div>
	</div>
</div>

{if isset($GLOBAL_WARNING_TITLE)}
<div class="ui medium modal" id="modal-acknowledge">
    <div class="header">
        {$GLOBAL_WARNING_TITLE}
    </div>
    <div class="content">
        {$GLOBAL_WARNING_REASON}
    </div>
    <div class="actions">
        <a class="ui positive button" href="{$GLOBAL_WARNING_ACKNOWLEDGE_LINK}">{$GLOBAL_WARNING_ACKNOWLEDGE}</a>
    </div>
</div>
{/if}

{foreach from=$TEMPLATE_JS item=script}
    {$script}
{/foreach}

{if isset($GLOBAL_WARNING_TITLE)}
<script type="text/javascript">
    $('#modal-acknowledge').modal({ closable: false }).modal('show');
</script>
{/if}

<script type="text/javascript">
    function toggleDarkLightMode() {
        $.post("{$DARK_LIGHT_MODE_ACTION}", { token: "{$DARK_LIGHT_MODE_TOKEN}" })
            .done(function () {
                window.location.reload();
            });

        return false;
    }

    {if !$LOGGED_IN_USER}
    const autoLanguage = document.getElementById('auto-language');
    const autoLanguageValue = $.cookie('auto_language') ?? 'true';
    autoLanguage.innerText = '{$AUTO_LANGUAGE_TEXT} (' + (autoLanguageValue === 'true' ? '{$ENABLED}' : '{$DISABLED}') + ')';
    {/if}

    function toggleAutoLanguage() {
        $.cookie(
            'auto_language',
            autoLanguageValue === 'true' ? 'false' : 'true',
            { path: '/' }
        );
        window.location.reload();
    }
</script>

{if isset($NEW_UPDATE) && ($NEW_UPDATE_URGENT != true)}
<script src="{$TEMPLATE.path}/js/core/update.js"></script>
{/if}

{if !isset($EXCLUDE_END_BODY)}
{if isset($DEBUGBAR_HTML)}
{$DEBUGBAR_HTML}
{/if}
<script>
$(window).on("load",function(){
     $(".loader-wrapper").fadeOut("slow");
});
</script>
<script>
  function changecolor(o) {
    var c = $(o).data("color");
    var e = document.getElementById("changer");
    setccolor(c);
    e.setAttribute("data-theme", c);
  }

  function cchangeColor(o) {
    document.getElementById("changer").setAttribute("data-theme", o);
  }

  function getccolor() {
    var o = Cookies.get("theme_color");
    return typeof o === "undefined" ? null : o;
  }

  function setccolor(o) {
    Cookies.set("theme_color", o, { expires: 365 });
  }

  function onContentLoaded() {
    const c = getccolor();
    if (c != null) {
      cchangeColor(c);
    }
  }

  onContentLoaded();
</script>
</body>

</html>
{/if}
