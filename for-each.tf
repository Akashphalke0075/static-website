variable "user-list" {
    default = ["akash","manav","kunal","vikram",]
}

resource "user-list" "name-update" {
    for_each = toset(var.user-list)
    name = each.key
}