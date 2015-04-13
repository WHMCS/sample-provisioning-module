<h2>Custom Client Area Page</h2>

<p>This is an example of an additional custom page within a module's client area product management pages.</p>

<p>Everything that is available in the overview is also available in this template file along with any custom defined template variables.</p>

<hr>

<div class="row">
    <div class="col-sm-5">
        {$LANG.orderproduct}
    </div>
    <div class="col-sm-7">
        {$groupname} - {$product}
    </div>
</div>

<div class="row">
    <div class="col-sm-5">
        Extra Variable 1
    </div>
    <div class="col-sm-7">
        {$extraVariable1}
    </div>
</div>

<div class="row">
    <div class="col-sm-5">
        Extra Variable 2
    </div>
    <div class="col-sm-7">
        {$extraVariable2}
    </div>
</div>

<hr>

<div class="row">
    <div class="col-sm-4">
        <form method="post" action="clientarea.php?action=productdetails">
            <input type="hidden" name="id" value="{$serviceid}" />
            <button type="submit" class="btn btn-default btn-block">
                <i class="fa fa-arrow-circle-left"></i>
                Back to Overview
            </button>
        </form>
    </div>
</div>
