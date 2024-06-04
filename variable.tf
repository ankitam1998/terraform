variable "this_aws_instance_ami" {
  type        = string
}
variable "this_aws_instance_instance_type" {
  type        = string
}
variable "//this_aws_instance_subnet" {
  type        = string
}
variable "this_aws_instance_key_name " {
  type        = string
}
variable "this_aws_instance_availability_zone" {
  type        = string
}
variable "this_aws_instance_volume_size" {
  type        = string  
}
variable "this_aws_instance_count" {
  type        = any
}
variable "this_aws_instance_user_data_base64" {
  type        = string
}
variable "this_aws_instance_tags" {
  type        = map(string)
}
variable "this_aws_instance_subnet" {
  type        = string
}
variable "this_sg_vpc_id" {
  type        = list(string)
}
variable "//this_aws_vpc_id" {
  type        = list(string)
}
