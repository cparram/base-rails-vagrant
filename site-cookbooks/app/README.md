app Cookbook
==================

This cookbook makes a base rails development enviroment.

Requirements
------------
#### cookbooks
- `rbenv` - to install rbenv and ruby build
- `postgresql` - to install server and client packages

Attributes
----------
TODO: create default attribute.

Usage
-----
Just include `app::recipe` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[app::rbenv]",
    "recipe[app::postgres]",
    "recipe[app::setup]"
  ]
}
```
