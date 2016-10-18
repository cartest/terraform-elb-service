variable "aws_region" {
  type        = "string"
  description = "AWS Region"
  default     = "eu-west-1"
}

variable "tags" {
  type = "map"

  default = {
    App-Stack-Color = ""
    Environment     = ""
    Application     = ""
    Tier            = ""
  }

  description = "Tags to apply to all components"
}

variable "availability_zones" {
  type        = "list"
  default     = []
  description = "List of Availability Zones for Subnets and Autoscaling Groups"
}

variable "vpc_id" {
  type        = "string"
  description = "Parent VPC ID"
}

variable "subnets_route_tables" {
  type        = "list"
  description = "List of Route table IDs to associate with the subnets"
  default     = []
}

variable "name" {
  type        = "string"
  description = "Elb service name. Synonymous with Role and Nodetype. Used to populate Role and Nodetype tag as well as define resource names and Name tags"
}

variable "subnets_map_public_ip_on_launch" {
  type        = "string"
  default     = "0"
  description = "Specify true to indicate that instances should be assigned a public IP address"
}

variable "subnets_cidr" {
  type        = "list"
  default     = []
  description = "List of CIDR blocks for microservice subnets"
}
