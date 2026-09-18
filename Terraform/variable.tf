variable "location" {
  default = "westus"

}
variable "prefix" {
}
variable "admin_password" {
  type      = string
  sensitive = true
}
