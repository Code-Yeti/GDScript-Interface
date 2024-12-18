extends Node
## Interface Name
class_name IDamagable

## Interface Properties

## Interface Functions

## Interface Signals


## Interface Init
func init(node:Node) -> void:
	for method in self.get_script().get_script_method_list():
		if method.name != "init": # Ignore the init function
			assert(method.name in node, "Method not found: " + method.name + " in " + node.name)

	for this_signal in self.get_script().get_script_signal_list():
		assert(this_signal.name in node, "Signal not found: " + this_signal.name + " in " + node.name)
		
	var prop_list:Array = self.get_script().get_script_property_list()
	print(prop_list)
	for i in range(1, prop_list.size()):  # skip first property as the default is the property "Built-in script"
		var property = prop_list[i]
		print(property)
		assert(property.name in node, "Property not found: " + property.name + "[" +  type_string(property.type) + "] in " + node.name)
