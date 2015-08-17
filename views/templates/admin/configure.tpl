{*
*
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    Piotr Karecki <tech@dotpay.pl>
*  @copyright dotpay
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*
*}
{if !$DOTPAY_CONFIGURATION_OK or $DP_TEST}
<div class="panel"><div class="dotpay-offer">
    <h3>{l s='Registration' mod='dotpay'}</h3>
    <p>{l s='In response to the market’s needs Dotpay has been delivering innovative Internet payment services providing the widest e-commerce solution offer for years. The domain is money transfers between a buyer and a merchant within a complex service based on counselling and additional security. Within an offer of Internet payments Dotpay offers over 50 payment channels including: mobile payments, instalments, cash, e-wallets, transfers and credit card payments.' mod='dotpay'}</p>
    <p>{l s='To all new clients who have filled in a form and wish to accept payments we offer promotional conditions:' mod='dotpay'}</p>
    <ul>
        <li><b>1,9%</b> {l s='commission on Internet payments (not less than PLN 0.30) ' mod='dotpay'}</li>
        <li>{l s='instalment payments' mod='dotpay'} <b>{l s='without any commission!' mod='dotpay'}</b></li>
        <li>{l s='an activation fee - only PLN 10' mod='dotpay'}</li>
        <li><b>{l s='without any additional fees' mod='dotpay'}</b> {l s='for refunds and withdrawals!' mod='dotpay'}</li>
    </ul>
    <p>{l s='In short, minimizing effort and work time you will increase your sales possibilities. Do not hesitate and start your account now!' mod='dotpay'}</p>
    <div class="cta-button-container">
        <a href="http://www.dotpay.pl/prestashop/" class="cta-button">{l s='Register now!' mod='dotpay'}</a>
    </div>
</div></div>
{/if}
<div class="panel"><div class="dotpay-config">
    <h3>{l s='Configuration' mod='dotpay'}</h3>
    <p>{l s='Thanks to Dotpay payment module the only activities needed for integration are: ID and PIN numbers and URLC confirmation configuration.' mod='dotpay'}</p>
    <p>{l s='ID and PIN can be found in Dotpay panel in Settings in the top bar. ID number is a 6-digit string after # in a “Shop” line.' mod='dotpay'}</p>
    <p>{l s='URLC configuration is just setting an address to which information about payment should be directed. This address is:' mod='dotpay'} <b>{$DP_URLC}</b></p>
    <p>{l s='If you own many shops connected to one Dotpay account, URL must be directed automatically and “Block external urlc” must not be ticked in Edition section.' mod='dotpay'}</p>
    <p>{l s='More information can be found in Dotpay manual.' mod='dotpay'}</p>
</div></div>

<div class="panel"><div class="dotpay-config-state">
    <h3>{l s='Configuration state' mod='dotpay'}</h3>
    {if $DOTPAY_CONFIGURATION_OK}
        <table><tr><td><img width="100" height="100" src="{$module_dir}img/tick.png"></td><td><p>
        <p>{l s='Module is active. If you do not receive payment information, please chcek URLC configuration.' mod='dotpay'}</p>
        <p>{if $DP_TEST}{l s='Module is in TEST mode. All payment informations are fake!' mod='dotpay'}{/if}</p>
        </p></td></tr></table>
    {else}
        <table><tr><td><img width="100" height="100" src="{$module_dir}img/cross.png"></td><td>
        <p>{l s='Module is not active. Please check your configuration.' mod='dotpay'}</p>
        <p>{l s='ID and PIN can be found in Dotpay panel in Settings in the top bar. ID number is a 6-digit string after # in a “Shop” line.' mod='dotpay'}</p>
        </p></td></tr></table>
    {/if}
</div></div>
