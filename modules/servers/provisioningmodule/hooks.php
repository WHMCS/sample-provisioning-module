<?php
/**
 * WHMCS SDK Sample Provisioning Module Hooks File
 *
 * Hooks allow you to tie into events that occur within the WHMCS application.
 *
 * This allows you to execute your own code in addition to, or sometimes even
 * instead of that which WHMCS executes by default.
 *
 * WHMCS recommends as good practice that all named hook functions are prefixed
 * with the keyword "hook", followed by your module name, followed by the action
 * of the hook function. This helps prevent naming conflicts with other addons
 * and modules.
 *
 * For every hook function you create, you must also register it with WHMCS.
 * There are two ways of registering hooks, both are demonstrated below.
 *
 * @see https://developers.whmcs.com/hooks/
 *
 * @copyright Copyright (c) WHMCS Limited 2017
 * @license https://www.whmcs.com/license/ WHMCS Eula
 */

// Require any libraries needed for the module to function.
// require_once __DIR__ . '/path/to/library/loader.php';
//
// Also, perform any initialization required by the service's library.

/**
 * Client edit sample hook function.
 *
 * This sample demonstrates making a service call whenever a change is made to a
 * client profile within WHMCS.
 *
 * @param array $params Parameters dependant upon hook function
 *
 * @return mixed Return dependant upon hook function
 */
function hook_provisioningmodule_clientedit(array $params)
{
    try {
        // Call the service's function, using the values provided by WHMCS in
        // `$params`.
    } catch (Exception $e) {
        // Consider logging or reporting the error.
    }
}

/**
 * Register a hook with WHMCS.
 *
 * add_hook(string $hookPointName, int $priority, string|array|Closure $function)
 */
add_hook('ClientEdit', 1, 'hook_provisioningmodule_clientedit');

/**
 * Insert a service item to the client area navigation bar.
 *
 * Demonstrates adding an additional link to the Services navbar menu that
 * provides a shortcut to a filtered products/services list showing only the
 * products/services assigned to the module.
 *
 * @param \WHMCS\View\Menu\Item $menu
 */
add_hook('ClientAreaPrimaryNavbar', 1, function ($menu)
{
    // Check whether the services menu exists.
    if (!is_null($menu->getChild('Services'))) {
        // Add a link to the module filter.
        $menu->getChild('Services')
            ->addChild(
                'Provisioning Module Products',
                array(
                    'uri' => 'clientarea.php?action=services&module=provisioningmodule',
                    'order' => 15,
                )
            );
    }
});

/**
 * Render a custom sidebar panel in the secondary sidebar.
 *
 * Demonstrates the creation of an additional sidebar panel on any page where
 * the My Services Actions default panel appears and populates it with a title,
 * icon, body and footer html output and a child link.  Also sets it to be in
 * front of any other panels defined up to this point.
 *
 * @param \WHMCS\View\Menu\Item $secondarySidebar
 */
add_hook('ClientAreaSecondarySidebar', 1, function ($secondarySidebar)
{
    // determine if we are on a page containing My Services Actions
    if (!is_null($secondarySidebar->getChild('My Services Actions'))) {

        // define new sidebar panel
        $customPanel = $secondarySidebar->addChild('Provisioning Module Sample Panel');

        // set panel attributes
        $customPanel->moveToFront()
            ->setIcon('fa-user')
            ->setBodyHtml(
                'Your HTML output goes here...'
            )
            ->setFooterHtml(
                'Footer HTML can go here...'
            );

        // define link
        $customPanel->addChild(
                'Sample Link Menu Item',
                array(
                    'uri' => 'clientarea.php?action=services&module=provisioningmodule',
                    'icon'  => 'fa-list-alt',
                    'order' => 2,
                )
            );

    }
});
