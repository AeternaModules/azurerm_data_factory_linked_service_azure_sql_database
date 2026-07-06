variable "data_factory_linked_service_azure_sql_databases" {
  description = <<EOT
Map of data_factory_linked_service_azure_sql_databases, attributes below
Required:
    - data_factory_id
    - name
Optional:
    - additional_properties
    - annotations
    - connection_string
    - credential_name
    - description
    - integration_runtime_name
    - parameters
    - service_principal_id
    - service_principal_key
    - tenant_id
    - use_managed_identity
    - key_vault_connection_string (block):
        - linked_service_name (required)
        - secret_name (required)
    - key_vault_password (block):
        - linked_service_name (required)
        - secret_name (required)
EOT

  type = map(object({
    data_factory_id          = string
    name                     = string
    additional_properties    = optional(map(string))
    annotations              = optional(list(string))
    connection_string        = optional(string)
    credential_name          = optional(string)
    description              = optional(string)
    integration_runtime_name = optional(string)
    parameters               = optional(map(string))
    service_principal_id     = optional(string)
    service_principal_key    = optional(string)
    tenant_id                = optional(string)
    use_managed_identity     = optional(bool) # Default: false
    key_vault_connection_string = optional(object({
      linked_service_name = string
      secret_name         = string
    }))
    key_vault_password = optional(object({
      linked_service_name = string
      secret_name         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_sql_databases : (
        v.connection_string == null || (length(v.connection_string) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_sql_databases : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_sql_databases : (
        v.key_vault_connection_string == null || (length(v.key_vault_connection_string.linked_service_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_sql_databases : (
        v.key_vault_connection_string == null || (length(v.key_vault_connection_string.secret_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_sql_databases : (
        v.key_vault_password == null || (length(v.key_vault_password.linked_service_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_sql_databases : (
        v.key_vault_password == null || (length(v.key_vault_password.secret_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_sql_databases : (
        v.service_principal_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.service_principal_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_sql_databases : (
        v.service_principal_key == null || (length(v.service_principal_key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_sql_databases : (
        v.tenant_id == null || (length(v.tenant_id) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_sql_databases : (
        v.integration_runtime_name == null || (length(v.integration_runtime_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_sql_databases : (
        v.credential_name == null || (length(v.credential_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_linked_service_azure_sql_database's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.LinkedServiceDatasetName] regexp.MustCompile(`^[-.+?/<>*%&:\\]+$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
}

