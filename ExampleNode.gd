# Exmaple usage

extends Node2D

# Create a variable of the interface type, assign new instance
var iDamagable: IDamagable = IDamagable.new()

func _ready() -> void:
  # Call the interface init function passing itself as the node object.  This will check for interface implimentation
	iDamagable.init(self)
  # Check to see if the object impliments the interface
	print(Interfaces.Impliments(IDamagable, self))
