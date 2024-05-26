variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 2
}

variable "vpc_id" {
    description = "VPC ID"
    type = string
    default = "vpc-0f4ea436a49b06c61"
}

variable "open_ports" {
    description = "List of open ports"
    type = list(number)
    default = [22, 80, 443]
}