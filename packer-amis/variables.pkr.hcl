variable "skip_create_ami" {
  type    = bool
  default = false
}

variable "aws_region" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "project_name" {
  type = string
}

variable "application_name" {
  type = string
}

variable "packer_instance_type" {
  type = string
}

variable "packer_source_ami" {
  type = string
}

variable "packer_kms_key_id" {
  type = string
}

variable "packer_ssh_username" {
  type = string
}

variable "tags" {
  type = map(string)
}































