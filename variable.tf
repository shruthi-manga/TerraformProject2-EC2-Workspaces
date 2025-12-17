
variable "region" {
  type = string

}

variable "ami" {
  type = string

}
variable "instancetype" {
  type = string

}
variable "env" {
  type = string

}
variable "instancecount" {
  type = number

}

variable "tagsvariable" {
  type = map(string)

}
