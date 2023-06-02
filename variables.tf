variable "hostname" {
  type = string
}

variable "instance_id" {
  type = string
}

variable "region" {
  type = string
}

variable "instance_check_enabled" {
  type    = bool
  default = true
}

variable "instance_check_period" {
  type    = string
  default = 300
}

variable "instance_check_evaluation_periods" {
  type    = string
  default = 2
}

variable "instance_check_datapoints_to_alarm" {
  type    = string
  default = 2
}

variable "instance_check_threshold" {
  type    = string
  default = 1
}

variable "system_check_enabled" {
  type    = bool
  default = true
}

variable "system_check_period" {
  type    = string
  default = 300
}

variable "system_check_evaluation_periods" {
  type    = string
  default = 2
}

variable "system_check_datapoints_to_alarm" {
  type    = string
  default = 2
}

variable "system_check_threshold" {
  type    = string
  default = 1
}
