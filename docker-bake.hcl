variable "FORTIGATE_VERSION" {
  type    = string
}

target "default" {
  platforms = [ "local" ]
  output = [ "out" ]
  args = {
    "FORTIGATE_VERSION" = FORTIGATE_VERSION
  }
}
