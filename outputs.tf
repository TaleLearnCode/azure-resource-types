output "name" {
	value = local.abbreviations[var.resource_type] == null ? null : {
		name         = try(local.names[var.resource_type], null)
		abbreviation = try(local.abbreviations[var.resource_type], null)
		namespace    = try(local.namespaces[var.resource_type], null)
	}
}