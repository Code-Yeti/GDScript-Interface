extends Node

# File should be loaded as a global so you can check if an object impliments an interface
# Usage: Interfaces.Impliments(IDamagable, self)

func Impliments(interfaceName: GDScript, targetNode:Node) -> bool:
	var prop_list:Array = targetNode.get_script().get_script_property_list()
	for property in prop_list:
		if property.class_name == interfaceName.get_global_name():
			return true
	return false
