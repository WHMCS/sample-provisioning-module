<h2>Overview</h2>

<p>Overview output goes here...</p>

<p>Please Remember: When overriding the default product overview output, it is important to provide the product details and information that are normally displayed on this page. These are provided below.</p>

<div class="alert alert-info">
    Any variables you define inside the ClientArea module function can also be accessed and used here, for example: {$extraVariable1} &amp; {$extraVariable2}
</div>

<h3>{$LANG.clientareaproductdetails}</h3>

<hr>

<div class="row">
    <div class="col-sm-5">
        {$LANG.clientareahostingregdate}
    </div>
    <div class="col-sm-7">
        {$regdate}
    </div>
</div>

<div class="row">
    <div class="col-sm-5">
        {$LANG.orderproduct}
    </div>
    <div class="col-sm-7">
        {$groupname} - {$product}
    </div>
</div>

{if $type eq "server"}
    {if $domain}
        <div class="row">
            <div class="col-sm-5">
                {$LANG.serverhostname}
            </div>
            <div class="col-sm-7">
                {$domain}
            </div>
        </div>
    {/if}
    {if $dedicatedip}
        <div class="row">
            <div class="col-sm-5">
                {$LANG.primaryIP}
            </div>
            <div class="col-sm-7">
                {$dedicatedip}
            </div>
        </div>
    {/if}
    {if $assignedips}
        <div class="row">
            <div class="col-sm-5">
                {$LANG.assignedIPs}
            </div>
            <div class="col-sm-7">
                {$assignedips|nl2br}
            </div>
        </div>
    {/if}
    {if $ns1 || $ns2}
        <div class="row">
            <div class="col-sm-5">
                {$LANG.domainnameservers}
            </div>
            <div class="col-sm-7">
                {$ns1}<br />{$ns2}
            </div>
        </div>
    {/if}
{else}
    {if $domain}
        <div class="row">
            <div class="col-sm-5">
                {$LANG.orderdomain}
            </div>
            <div class="col-sm-7">
                {$domain}
                <a href="http://{$domain}" target="_blank" class="btn btn-default btn-xs">{$LANG.visitwebsite}</a>
            </div>
        </div>
    {/if}
    {if $username}
        <div class="row">
            <div class="col-sm-5">
                {$LANG.serverusername}
            </div>
            <div class="col-sm-7">
                {$username}
            </div>
        </div>
    {/if}
    {if $serverdata}
        <div class="row">
            <div class="col-sm-5">
                {$LANG.servername}
            </div>
            <div class="col-sm-7">
                {$serverdata.hostname}
            </div>
        </div>
        <div class="row">
            <div class="col-sm-5">
                {$LANG.domainregisternsip}
            </div>
            <div class="col-sm-7">
                {$serverdata.ipaddress}
            </div>
        </div>
        {if $serverdata.nameserver1 || $serverdata.nameserver2 || $serverdata.nameserver3 || $serverdata.nameserver4 || $serverdata.nameserver5}
            <div class="row">
                <div class="col-sm-5">
                    {$LANG.domainnameservers}
                </div>
                <div class="col-sm-7">
                    {if $serverdata.nameserver1}{$serverdata.nameserver1} ({$serverdata.nameserver1ip})<br />{/if}
                    {if $serverdata.nameserver2}{$serverdata.nameserver2} ({$serverdata.nameserver2ip})<br />{/if}
                    {if $serverdata.nameserver3}{$serverdata.nameserver3} ({$serverdata.nameserver3ip})<br />{/if}
                    {if $serverdata.nameserver4}{$serverdata.nameserver4} ({$serverdata.nameserver4ip})<br />{/if}
                    {if $serverdata.nameserver5}{$serverdata.nameserver5} ({$serverdata.nameserver5ip})<br />{/if}
                </div>
            </div>
        {/if}
    {/if}
{/if}

{if $dedicatedip}
    <div class="row">
        <div class="col-sm-5">
            {$LANG.domainregisternsip}
        </div>
        <div class="col-sm-7">
            {$dedicatedip}
        </div>
    </div>
{/if}

{foreach from=$configurableoptions item=configoption}
    <div class="row">
        <div class="col-sm-5">
            {$configoption.optionname}
        </div>
        <div class="col-sm-7">
            {if $configoption.optiontype eq 3}
                {if $configoption.selectedqty}
                    {$LANG.yes}
                {else}
                    {$LANG.no}
                {/if}
            {elseif $configoption.optiontype eq 4}
                {$configoption.selectedqty} x {$configoption.selectedoption}
            {else}
                {$configoption.selectedoption}
            {/if}
        </div>
    </div>
{/foreach}

{foreach from=$productcustomfields item=customfield}
    <div class="row">
        <div class="col-sm-5">
            {$customfield.name}
        </div>
        <div class="col-sm-7">
            {$customfield.value}
        </div>
    </div>
{/foreach}

{if $lastupdate}
    <div class="row">
        <div class="col-sm-5">
            {$LANG.clientareadiskusage}
        </div>
        <div class="col-sm-7">
            {$diskusage}MB / {$disklimit}MB ({$diskpercent})
        </div>
    </div>
    <div class="row">
        <div class="col-sm-5">
            {$LANG.clientareabwusage}
        </div>
        <div class="col-sm-7">
            {$bwusage}MB / {$bwlimit}MB ({$bwpercent})
        </div>
    </div>
{/if}

<div class="row">
    <div class="col-sm-5">
        {$LANG.orderpaymentmethod}
    </div>
    <div class="col-sm-7">
        {$paymentmethod}
    </div>
</div>

<div class="row">
    <div class="col-sm-5">
        {$LANG.firstpaymentamount}
    </div>
    <div class="col-sm-7">
        {$firstpaymentamount}
    </div>
</div>

<div class="row">
    <div class="col-sm-5">
        {$LANG.recurringamount}
    </div>
    <div class="col-sm-7">
        {$recurringamount}
    </div>
</div>

<div class="row">
    <div class="col-sm-5">
        {$LANG.clientareahostingnextduedate}
    </div>
    <div class="col-sm-7">
        {$nextduedate}
    </div>
</div>

<div class="row">
    <div class="col-sm-5">
        {$LANG.orderbillingcycle}
    </div>
    <div class="col-sm-7">
        {$billingcycle}
    </div>
</div>

<div class="row">
    <div class="col-sm-5">
        {$LANG.clientareastatus}
    </div>
    <div class="col-sm-7">
        {$status}
    </div>
</div>

{if $suspendreason}
    <div class="row">
        <div class="col-sm-5">
            {$LANG.suspendreason}
        </div>
        <div class="col-sm-7">
            {$suspendreason}
        </div>
    </div>
{/if}

<hr>

<div class="row">
    <div class="col-sm-4">
        <form method="post" action="clientarea.php?action=productdetails">
            <input type="hidden" name="id" value="{$serviceid}" />
            <input type="hidden" name="customAction" value="manage" />
            <button type="submit" class="btn btn-default btn-block">
                Custom Client Area Page
            </button>
        </form>
    </div>

    {if $packagesupgrade}
        <div class="col-sm-4">
            <a href="upgrade.php?type=package&amp;id={$id}" class="btn btn-success btn-block">
                {$LANG.upgrade}
            </a>
        </div>
    {/if}

    <div class="col-sm-4">
        <a href="clientarea.php?action=cancel&amp;id={$id}" class="btn btn-danger btn-block{if $pendingcancellation}disabled{/if}">
            {if $pendingcancellation}
                {$LANG.cancellationrequested}
            {else}
                {$LANG.cancel}
            {/if}
        </a>
    </div>
</div>
