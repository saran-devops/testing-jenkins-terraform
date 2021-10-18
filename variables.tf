variable "bucket_prefix" {
  type        = string
  description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix"
  default     = "terraformbucket-"
}

variable "tags" {
  type        = map
  description = "bucket tag"
  default = {
    environment = "DEV"
    terraform   = "true"
  }
}
variable "versioning" {
  type        = bool
  description = "bucket versioning."
  default     = true
}
variable "acl" {
  type        = string
  description = " Defaults to private "
  default     = "private"
}

variable "ingressrules" {
  type    = list(number)
  default = [80, 443, 22]
}
