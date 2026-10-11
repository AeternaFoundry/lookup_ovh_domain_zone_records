output "domain_zone_records_lookup_ids" {
  description = "Map of ids values across all domain_zone_records_lookup, keyed the same as var.domain_zone_records_lookup except keys with no ids are omitted"
  value       = { for k, v in data.ovh_domain_zone_records.domain_zone_records_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "domain_zone_records_lookup_zone_name" {
  description = "Map of zone_name values across all domain_zone_records_lookup, keyed the same as var.domain_zone_records_lookup except keys with no zone_name are omitted"
  value       = { for k, v in data.ovh_domain_zone_records.domain_zone_records_lookup : k => v.zone_name if v.zone_name != null && length(v.zone_name) > 0 }
}

