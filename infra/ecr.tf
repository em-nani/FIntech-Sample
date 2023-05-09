resource "aws_ecr_repository" "FinTech" {
  name                 = "FinTech-pj"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}