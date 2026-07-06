output "data_factory_linked_service_azure_sql_databases" {
  description = "All data_factory_linked_service_azure_sql_database resources"
  value       = azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases
}
output "data_factory_linked_service_azure_sql_databases_additional_properties" {
  description = "List of additional_properties values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.additional_properties]
}
output "data_factory_linked_service_azure_sql_databases_annotations" {
  description = "List of annotations values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.annotations]
}
output "data_factory_linked_service_azure_sql_databases_connection_string" {
  description = "List of connection_string values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.connection_string]
}
output "data_factory_linked_service_azure_sql_databases_credential_name" {
  description = "List of credential_name values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.credential_name]
}
output "data_factory_linked_service_azure_sql_databases_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.data_factory_id]
}
output "data_factory_linked_service_azure_sql_databases_description" {
  description = "List of description values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.description]
}
output "data_factory_linked_service_azure_sql_databases_integration_runtime_name" {
  description = "List of integration_runtime_name values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.integration_runtime_name]
}
output "data_factory_linked_service_azure_sql_databases_key_vault_connection_string" {
  description = "List of key_vault_connection_string values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.key_vault_connection_string]
}
output "data_factory_linked_service_azure_sql_databases_key_vault_password" {
  description = "List of key_vault_password values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.key_vault_password]
}
output "data_factory_linked_service_azure_sql_databases_name" {
  description = "List of name values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.name]
}
output "data_factory_linked_service_azure_sql_databases_parameters" {
  description = "List of parameters values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.parameters]
}
output "data_factory_linked_service_azure_sql_databases_service_principal_id" {
  description = "List of service_principal_id values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.service_principal_id]
}
output "data_factory_linked_service_azure_sql_databases_service_principal_key" {
  description = "List of service_principal_key values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.service_principal_key]
}
output "data_factory_linked_service_azure_sql_databases_tenant_id" {
  description = "List of tenant_id values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.tenant_id]
}
output "data_factory_linked_service_azure_sql_databases_use_managed_identity" {
  description = "List of use_managed_identity values across all data_factory_linked_service_azure_sql_databases"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_sql_database.data_factory_linked_service_azure_sql_databases : v.use_managed_identity]
}

