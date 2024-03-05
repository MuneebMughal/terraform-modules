variable "app_name" {
  description = "Name of your application."
  type        = string
}
variable "solution_stack_name" {
  description = "Name of your solution stack name."
  type        = string
  default     = "64bit Amazon Linux 2023 v6.0.4 running Node.js 18"
}
variable "wait_for_ready_timeout" {
  description = "waiting time."
  type        = string
  default     = "120m"
}

variable "environment_variables" {
  type = map(string)
}
variable "environments" {
  type = list(object({
    tenant_name = string
    environment = string
  }))
  default = [
    {
      tenant_name = ""
      environment = ""
    }
  ]
}