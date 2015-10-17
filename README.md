Base Rails Vagrant configuration
==================

Requirements
------------

- `vangrant` - to develop environments
- `bundler` - provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed

Usage
-----
You must not clone the repository unless you want to contribute. To use this setup you must download the latest version and run the following commands

To install dependent gems:
```ruby
bundle
```

To run virtual machine
```
vagrant up
```
To interact with the machine and do whatever you want, for example cloning a rails project:
```
vagrant ssh
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github