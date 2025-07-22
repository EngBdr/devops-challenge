output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "postgresql_host" {
  value = azurerm_postgresql_flexible_server.psql.fqdn
}
