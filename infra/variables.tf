variable "location" { default = "East US" }
variable "resource_group_name" { default = "devops-challenge-rg" }
variable "acr_name" { default = "devopschallengeacr" }
variable "aks_cluster_name" { default = "devops-challenge-aks" }
variable "postgres_server_name" { default = "devopschallengepsql" }
variable "postgres_admin" { default = "psqladmin" }
variable "postgres_password" {
  description = "Admin password"
  type        = string
  sensitive   = true
}
