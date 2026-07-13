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
    use_managed_identity     = optional(bool)
    key_vault_connection_string = optional(object({
      linked_service_name = string
      secret_name         = string
    }))
    key_vault_password = optional(object({
      linked_service_name = string
      secret_name         = string
    }))
  }))
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
  # path: connection_string
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_connection_string.linked_service_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_connection_string.secret_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_password.linked_service_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_password.secret_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: service_principal_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: service_principal_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: tenant_id
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: integration_runtime_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: credential_name
  #   condition: length(value) > 0
  #   message:   must not be empty
}

