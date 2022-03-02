# RhenusDigital.IaC

[private_key_vault](private_key_vault/README.md)

[private_kubernetes_cluster](private_kubernetes_cluster/README.md)

[private_mssql_server](private_mssql_server/README.md)

[private_storage](private_storage/README.md)

## Naming convention
Prefix = rhscl`subscription_number`rg0

| Resource             | Convention                                                        | Example                         |
|----------------------|-------------------------------------------------------------------|---------------------------------|
| resource group       | app_`domain_number`_`domain_name`_`stage`_rg                      | app_1000_booking_prod_rg        |
| key vault            | rhscl`subscription_number`rg0kv-`domain`-[`application`-]`stage`  | rhscl0019rg0kv-booking-prod     |
| storage account      | rhscl`subscription_number`rg0st`domain`-[`application`-]`stage`   | rhscl0019rg0stbookingprod       |
| kubernetes cluster   | rhscl`subscription_number`rg0aks-`stage`                          | rhscl0019rg0aks-prod            |
| sql server           | rhscl`subscription_number`rg0sql-[`application`-]`stage`          | rhscl0019rg0sql-prod            |
| sql databases        | rhscl`subscription_number`rg0pdb-`domain`-[`application`-]`stage` | rhscl0019rg0pdb-booking-prod    |
| cosmos               | rhscl`subscription_number`rg0cos-[`application`-]`stage`          | rhscl0019rg0cos-prod            |
| service bus          | rhscl`subscription_number`rg0psb-`domain`-[`application`-]`stage` | rhscl0019rg0psb-booking-prod    |
| service bus topic    | sbt-`domain`-[`application`-]                                     | sbt-booking                     |
| virtual networks     | rhscl`subscription_number`rg0vnet-`stage`                         | rhscl0019rg0vnet-prod           |
| subnets              | rhscl`subscription_number`rg0sub-`name`-stage`                    | rhscl0019rg0sub-app-prod        |
| container registries | rhscl`subscription_number`rg0acr                                  | rhscl0019rg0acr                 |
| application insights | rhscl`subscription_number`rg0appi-`stage`                         | rhscl0019rg0appi-prod           |
| log analytics        | rhscl`subscription_number`rg0log-`domain`-`stage`                 | rhscl0019rg0log-kubernetes-prod |
 