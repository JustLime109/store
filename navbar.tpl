<div class="mobile-nav">
        <div class="mobile-nav-header">
            <div class="mobile-header-text"><h1>{$SITE_NAME}</h1></div>
            <div class="navbar-toggle-remove">
                <button><i class="fas fa-times"></i></button>
            </div>
        </div>
        <ul>
            {foreach from=$NAV_LINKS key=name item=item}
            {if isset($item.items)}
            <div class="item">
                <div class="ui dropdown item mobile-nav-link-dropdown">
                        {$item.icon} {$item.title}
                            <i class="dropdown icon"></i>
                    <div class="menu">
                        {foreach from=$item.items item=dropdown}
                        {if isset($dropdown.separator)}
                        <div class="divider"></div>
                        {else}
                        <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon}
                            {$dropdown.title}</a>
                        {/if}
                        {/foreach}
                        </div>
                        </div>
            {else}
            <li class="mobile-nav-link"><a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">{$item.icon}
                {$item.title}</a></li>
            {/if}
            {/foreach}
            <div class="mobile-sep"></div>
            <div class="mobile-user">
{foreach from=$USER_SECTION key=name item=item}
                    {if isset($item.items)}
                    {if ($name == "account")}
                    <a data-toggle="popup" data-position="bottom right"
                        id="button-{$name}">{$item.icon}</a>
                    {else}
                    <a data-toggle="popup" data-position="bottom right"
                        id="button-{$name}">{$item.icon}</a>
                    {/if}
                    <div class="ui wide basic popup">
                        <h4 class="ui header">{$item.title}</h4>
                        <div class="ui relaxed link list" id="list-{$name}">
                            {foreach from=$item.items item=dropdown}
                            {if isset($dropdown.separator)}
                            <div class="ui divider"></div>
                            {else}
                                {if isset($dropdown.action)}
                                    <a class="item" href="#" data-link="{$dropdown.link}" data-action="{$dropdown.action}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {else}
                                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {/if}
                            {/if}
                            {/foreach}
                        </div>
                        {if !empty($item.meta)}
                        <div class="ui link list">
                            <div class="ui divider"></div>
                            <a class="item" href="{$item.link}">{$item.meta}</a>
                        </div>
                        {/if}
                    </div>
                    {else}
                    {if ($name == "panel")}
                    <a href="{$item.link}" target="{$item.target}">{$item.icon}</a></li>
                    {elseif ($name == "register")}
                    <a href="{$item.link}" target="{$item.target}">{$item.title}</a></li>
                    {else}
                    <a href="{$item.link}" target="{$item.target}">{$item.title}</a></li>
                    {/if}
                    {/if}
                    {/foreach}
            </div>
            <div class="mobile-sep"></div>
            <div class="mobile-social-nav">
                <li><a href="https://discord.com"><i class="fab fa-discord"></i></a></li>
                <li><a href="https://twitter.com"><i class="fab fa-twitter"></i></a></li>
                <li><a href="https://youtube.com"><i class="fab fa-youtube"></i></a></li>
                <li><a href="https://twitch.tv"><i class="fab fa-twitch"></i></a></li>
            </div>
        </ul>
    </div>
    <div class="mobile-overlay"></div>
    </div>

<div class="eternity-header faded">
<div id="particles"></div>
<div class="navbar-toggle">
    <a href="#"><i class="fas fa-bars"></i> Menu</a>
    <div class="navbar-mc-dsc">
          <i class="mdi mdi-minecraft"></i> <span id="mc-online">0</span> 
    </div>
    <div class="navbar-mc-dsc">
          <i class="mdi mdi-discord"></i> <span id="discord-online">0</span>
    </div>
</div>
<div class="ui container">
  <div class="eligius-header">
    <div class="eternity-element minecraft" id="minecraftCopy">
      <div class="minecraft-status-icon"><i class="mdi mdi-minecraft"></i></div>
      <div class="minecraft-status-content">
        <div class="minecraft-status-title">
            <span id="ip-mc">Change from header.tpl</span>
        </div>
        <div class="minecraft-status-online">
            <span id="header-mc-online">0</span> Players online
        </div>
      </div>
    </div>
    <div class="eternity-element logo">
      <img src="https://quak.ovh/3H2eYBh.png" />
    </div>
    <div class="eternity-element discord" id="discordCopyy">
      <div class="discord-status-content">
        <div class="discord-status-title">
          <span id="ip-discord">Change from header.tpl</span>
        </div>
        <div class="discord-status-online">
            <span id="header-discord-online">0</span> Users online
        </div>
      </div>
      <div class="discord-status-icon"><i class="mdi mdi-discord"></i></div>
    </div>
  </div>
  </div>
</div>
</div>


<div class="silkyNav">
    {foreach from=$NAV_LINKS key=name item=item}
        {if isset($item.items)}
         <div class="ui dropdown item dropdownlinkz">
            {$item.icon} {$item.title}
            <i class="dropdown icon"></i>
             <div class="menu">
            <div class="header">{$item.title}</div>
                        {foreach from=$item.items item=dropdown}
                        {if isset($dropdown.separator)}
                        <div class="divider"></div>
                        {else}
                        <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon}
                            {$dropdown.title}</a>
                        {/if}
                        {/foreach}
                    </div>
                </div>
                {else}
                <a href="{$item.link}"> <div class="silkyItem {if isset($item.active)} silkyIActive{/if}" data-wenk="{$item.title}" data-wenk-pos="right">
                    {$item.icon}
                </div>
                </a>
                {/if}
     {/foreach}

    <div class="silkyUser">
    {foreach from=$USER_SECTION key=name item=item}
                    {if isset($item.items)}
                    {if ($name == "account")}
                    <a class="silkyUAvatar" data-toggle="popup" data-position="bottom right"
                        id="button-{$name}">{$item.icon} </a>
                    {else}
                    <a class="silkyItem" href="{$item.link}" data-wenk="{$item.title}" data-wenk-pos="right"
                        id="button-{$name}">{$item.icon}</a>
                    {/if}
                    <div class="ui wide basic popup">
                        <h4 class="ui header">{$item.title}</h4>
                        <div class="ui relaxed link list" id="list-{$name}">
                            {foreach from=$item.items item=dropdown}
                            {if isset($dropdown.separator)}
                            <div class="ui divider"></div>
                            {else}
                                {if isset($dropdown.action)}
                                    <a class="item" href="#" data-link="{$dropdown.link}" data-action="{$dropdown.action}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {else}
                                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {/if}
                            {/if}
                            {/foreach}
                        </div>
                        {if !empty($item.meta)}
                        <div class="ui link list">
                            <div class="ui divider"></div>
                            <a class="item" href="{$item.link}">{$item.meta}</a>
                        </div>
                        {/if}
                    </div>
                    {else}
                    {if ($name == "panel")}
                    <a class="silkyItem" href="{$item.link}" target="{$item.target}" data-wenk="{$item.title}" data-wenk-pos="right">{$item.icon}</a>
                    {elseif ($name == "register")}
                    <a class="silkyItem" href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {else}
                    <a class="silkyItem" href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {/if}
                    {/if}
                    {/foreach}
                </div>
            </div>
    </div>
</div>
