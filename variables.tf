variable "region" {
  type        = string
  description = "region for currrent working template"
  default     = "ap-south-1" #if the user doesn't pass the value this is the default
}

variable "network_info" {
  description = "This is netowork info"
  type = object({
    name = string
    cidr = string
    subnets = list(object({
      name = string
      cidr = string
    az = string }))
  })
  default = {
    name = "project_vpc_one"
    cidr = "10.0.0.0/16"
    subnets = [{
      name = "app1"
      az   = "ap-south-1a"
      cidr = "10.0.0.0/24"
      }, {
      name = "app2"
      cidr = "10.0.1.0/24"
      az   = "ap-south-1b"
      }, {
      name = "db1"
      az   = "ap-south-1a"
      cidr = "10.0.2.0/24"
      }, {
      name = "db2"
      cidr = "10.0.3.0/24"
      az   = "ap-south-1b"
    }]
  }
}


