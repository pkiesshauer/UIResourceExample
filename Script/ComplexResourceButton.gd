extends MarginContainer

@export var resourceType: ResourceType

func _ready():
	$VBoxContainer/Label.text = resourceType.Name

func _on_button_1_pressed():
	Storage.ChangeResource(resourceType, 1)

func _on_button_5_pressed():
	Storage.ChangeResource(resourceType, 5)

func _on_button_10_pressed():
	Storage.ChangeResource(resourceType, 10)

func _on_button_s_1_pressed():
	Storage.ChangeResource(resourceType, -1)

func _on_button_s_5_pressed():
	Storage.ChangeResource(resourceType, -5)

func _on_button_s_10_pressed():
	Storage.ChangeResource(resourceType, -10)
