package main
import rego.v1

denylist := [
	"google_iam",
	"google_container",
]

deny contains msg if {
	check_resources(input.resource_changes, denylist)
	banned := concat(", ", denylist)
	msg := sprintf("Terraform plan will change prohibited resources in the following namespaces: %v", [banned])
}