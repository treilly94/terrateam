package main

deny contains msg if {
	some resource in input.resource_changes
	resource.type == "random_pet"

	msg := sprintf("Resource %v is of type random_pet, which is not allowed.", [resource.address])
}
