variable "region" {
  type        = string
  description = "The AWS region to deploy resources."
  default     = "eu-central-1"
}

variable "image_tags" {
  type        = map(string)
  description = "A map for each component of a dagster instance (webserver, daemon) to its image tag to deploy."
  default = {
    webserver = "v0.0.1"
    daemon    = "v0.0.1"
  }

}