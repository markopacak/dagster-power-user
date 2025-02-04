module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "${local.project_name}-logs-bucket"

  // acl    = "private"
  // control_object_ownership = true
  // object_ownership         = "ObjectWriter"

  versioning = {
    enabled = false
  }

  force_destroy = true
}