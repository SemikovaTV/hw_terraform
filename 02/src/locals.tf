locals {
  project = "netology-develop-platform"
  env1 = "web"
  env2 = "db"
  vm1_name = "${ local.project }-${ local.env1 }"
  vm2_name = "${ local.project }-${ local.env2 }"
}
