# WHMCS Sample Provisioning Module #

## Summary ##

Provisioning Modules allow for the provisioning and management
of products & services in WHMCS.

Provisioning Modules are also referred to as Product or Server Modules.

The sample files here show how to structure provisioning module for WHMCS.
The samples also exercise all supported functionality.

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

For the latest WHMCS System Requirements, please refer to
http://docs.whmcs.com/System_Requirements

We recommend your module follows the same requirements wherever possible.

## Tests ##

We encourage you to write unit tests for your work. Within this SDK,
 we provide a sample unit test based upon the PHPUnit Testing Framework.

## Useful Resources
* [Developer Resources](http://www.whmcs.com/developers/)
* [Hook Documentation](http://docs.whmcs.com/Hooks)
* [API Documentation](http://docs.whmcs.com/API)

[WHMCS Limited](http://www.whmcs.com)
