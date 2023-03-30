locals {
    nullcheck = var.aminull == null ? "yes" : "no"
    blankcheck = var.aminull == "" ? "yes" : "no"

}
data "template_file" "test" {
  template = "Hello ${var.nodefault} ${var.name}! null? ${local.nullcheck}. blank? ${local.blankcheck}"
}
