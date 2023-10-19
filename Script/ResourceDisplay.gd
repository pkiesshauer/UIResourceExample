extends MarginContainer

@export var resourceType: ResourceType

func _ready():
	Storage.StorageAmountChanged.connect(OnStorageAmountChanged)
	$VBoxContainer/Name.text = resourceType.Name
	$VBoxContainer/Amount.text = str(0)
	if resourceType.IsFood:
		$ColorRect.color = Color.DARK_GREEN
	else:
		$ColorRect.color = Color.BLACK

func OnStorageAmountChanged(resource: ResourceType, amount: float):
	if resource == resourceType:
		$VBoxContainer/Amount.text = str(amount)
