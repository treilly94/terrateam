package main

default allow := false

allow if {
	count(violation) == 0
}

violation contains resource.address if {
	some resource in input.resource_changes
	resource.type == "random_pet"
}
