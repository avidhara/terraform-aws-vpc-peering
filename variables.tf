variable "peer_owner_id" {
  description = "description"
  default     = "default"
}

variable "peer_vpc_id" {
  type        = string
  description = "description"
}

variable "vpc_id" {
  type        = string
  description = "description"
}

variable "auto_accept" {
  type        = bool
  description = "description"
  default     = false
}

variable "peer_region" {
  type        = string
  description = "description"
  default     = null
}

variable "accepter" {
  type        = map
  description = "description"
  default = {

  }
}

variable "requester" {
  type        = map
  description = "description"
  default = {

  }
}

variable "tags" {
  type        = map
  description = "description"
  default = {

  }
}

####### Hub Route tables Update 

variable "requester_route_table_ids" {
  type        = list
  description = "Route Table IDs for Requester VPC"
  default = [

  ]
}

variable "destination_cidr_block" {
  type        = string
  description = "CIDR block of  Destinat"
  default     = ""
}
