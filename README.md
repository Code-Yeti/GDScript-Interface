# Godot4 Interfaces

## Usage

### Setting Up
* Add `interfaces.gd` to the globals autoload
* Use the `IDamagable.gd` file as a template for your interface, add functions, properties and signals as required
* Add a variable for the interface type, for example `var iDamagable: IDamagable = IDamagable.new()`
* In the _ready function call `iDamagable.init(self)`

### Checking for Interface Implimentation
Call the global `Interfaces.Impliments(IDamagable, self)` function passing the interface and target node, this will return a bool
