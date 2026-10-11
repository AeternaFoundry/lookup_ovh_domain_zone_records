variable "domain_zone_records_lookup" {
  description = <<EOT
Map of domain_zone_records_lookup, attributes below
Required:
    - zone_name
EOT

  type = map(object({
    zone_name = string
  }))
}

