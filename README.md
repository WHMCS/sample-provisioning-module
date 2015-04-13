# WHMCS Sample Provisioning Module #

## Summary ##

Provisioning Modules, also referred to as Product or Server Modules, allow you
to create modules that allow for the provisioning and management of products &
services in WHMCS.

The sample files here demonstrates how a provisioning module for WHMCS should
be structured and exercises all supported functionality.

For more information, please refer to the documentation at:
http://docs.whmcs.com/Provisioning_Module_Developer_Docs

## Recommended Module Content ##

The recommended structure of a provisioning module is as follows.

```
 provisioningmodule/
  |- lib/
  |- templates/
  |- tests/
  |  hooks.php
  |  logo.png
  |  provisioningmodule.php
```

## Minimum Requirements ##

For the latest WHMCS minimum system requirements, please refer to
http://docs.whmcs.com/System_Requirements

We recommend your module follows the same minimum requirements wherever
possible.

## Tests ##

We strongly encourage you to write unit tests for your work. Within this SDK we
provide a sample unit test based upon the widely used PHPUnit.

## Useful Resources
* [Developer Resources](http://www.whmcs.com/developers/)
* [Hook Documentation](http://docs.whmcs.com/Hooks)
* [API Documentation](http://docs.whmcs.com/API)

[WHMCS Limited](http://www.whmcs.com)
