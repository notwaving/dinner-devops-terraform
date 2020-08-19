resource "aws_ecr_repository" "ecr-container-registry" {
  count                = length(var.ecr_repository_names)
  name                 = var.ecr_repository_names[count.index]
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}