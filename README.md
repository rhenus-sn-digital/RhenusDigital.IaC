# RhenusDigital.IaC

[private_key_vault](private_key_vault/README.md)

[private_kubernetes_cluster](private_kubernetes_cluster/README.md)

[private_mssql_server](private_mssql_server/README.md)

[private_storage](private_storage/README.md)

## Naming convention

| Resource             | Convention                                         | Example                        |
|----------------------|----------------------------------------------------|--------------------------------|
| resource group       | rg-`domain`-[`application`-]`stage`                | rg-booking-prod                |
| key vault            | kv-`organization`-`domain`-[`application`-]`stage` | kv-rhenus-digital-booking-prod |
| storage account      | st `organization` `domain` [`application`] `stage` | strhenusdigitalbookingprod     |
| kubernetes cluster   | aks-`organization`-`stage`                         | aks-rhenus-digital-prod        |
| kubernetes nodes     | aks-`organization`-node-`stage`                    | aks-rhenus-digital-node-prod   |
| sql server           | aks-`organization`-[`application`-]`stage`         | sql-rhenus-digital-prod        |
| sql databases        | sqldb-`domain`-[`application`-]`stage`             | sqldb-booking-prod             |
| cosmos               | aks-`organization`-[`application`-]`stage`         | sql-rhenus-digital-prod        |
| service bus          | sb-`organization`-`domain`-[`application`-]`stage` | sb-rhenus-digital-booking-prod |
| service bus topic    | sbt-`domain`-[`application`-]                      | sbt-booking                    |
| virtual networks     | vnet-`organization`-`stage`                        | vnet-rhenus-digital-prod       |
| subnets              | snet-[`application`-]`stage`                       | snet-app-prod                  |
| container registries | cr-`organization`                                  | cr-rhenus-digital              |
| application insights | appi-`organization`-`stage`                        | appi-rhenus-digital-prod       |
| log analytics        | log-`domain`-`stage`                               | log-kubernetes-prod            |
 