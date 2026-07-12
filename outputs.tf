output "data_factory_linked_service_azure_sql_databases_id" {
  description = "Map of id values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.id }
}
output "data_factory_linked_service_azure_sql_databases_additional_properties" {
  description = "Map of additional_properties values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.additional_properties }
}
output "data_factory_linked_service_azure_sql_databases_annotations" {
  description = "Map of annotations values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.annotations }
}
output "data_factory_linked_service_azure_sql_databases_connection_string" {
  description = "Map of connection_string values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.connection_string }
}
output "data_factory_linked_service_azure_sql_databases_credential_name" {
  description = "Map of credential_name values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.credential_name }
}
output "data_factory_linked_service_azure_sql_databases_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.data_factory_id }
}
output "data_factory_linked_service_azure_sql_databases_description" {
  description = "Map of description values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.description }
}
output "data_factory_linked_service_azure_sql_databases_integration_runtime_name" {
  description = "Map of integration_runtime_name values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.integration_runtime_name }
}
output "data_factory_linked_service_azure_sql_databases_key_vault_connection_string" {
  description = "Map of key_vault_connection_string values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.key_vault_connection_string }
}
output "data_factory_linked_service_azure_sql_databases_key_vault_password" {
  description = "Map of key_vault_password values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.key_vault_password }
}
output "data_factory_linked_service_azure_sql_databases_name" {
  description = "Map of name values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.name }
}
output "data_factory_linked_service_azure_sql_databases_parameters" {
  description = "Map of parameters values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.parameters }
}
output "data_factory_linked_service_azure_sql_databases_service_principal_id" {
  description = "Map of service_principal_id values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.service_principal_id }
}
output "data_factory_linked_service_azure_sql_databases_service_principal_key" {
  description = "Map of service_principal_key values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.service_principal_key }
}
output "data_factory_linked_service_azure_sql_databases_tenant_id" {
  description = "Map of tenant_id values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.tenant_id }
}
output "data_factory_linked_service_azure_sql_databases_use_managed_identity" {
  description = "Map of use_managed_identity values across all data_factory_linked_service_azure_sql_databases, keyed the same as var.data_factory_linked_service_azure_sql_databases"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : k => v.use_managed_identity }
}

