data "ovh_domain_zone_records" "domain_zone_records_lookup" {
  for_each = var.domain_zone_records_lookup

  zone_name = each.value.zone_name
}

