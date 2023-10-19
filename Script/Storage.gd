extends Node

signal StorageAmountChanged(resource: ResourceType, amount: float)

var storage: Dictionary

func _ready():
	storage = {}

func ChangeResource(resource: ResourceType, amount: float):
	if storage.has(resource):
		storage[resource] += amount
	else:
		storage[resource] = amount
	StorageAmountChanged.emit(resource, storage[resource])
