extends Button

@export var resourceType: ResourceType

func _ready():
	text = "Add 1 " + resourceType.Name

func _on_pressed():
	Storage.ChangeResource(resourceType, 1)
