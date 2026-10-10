output "chime_voice_connector_terminations_id" {
  description = "Map of id values across all chime_voice_connector_terminations, keyed the same as var.chime_voice_connector_terminations"
  value       = { for k, v in aws_chime_voice_connector_termination.chime_voice_connector_terminations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chime_voice_connector_terminations_calling_regions" {
  description = "Map of calling_regions values across all chime_voice_connector_terminations, keyed the same as var.chime_voice_connector_terminations"
  value       = { for k, v in aws_chime_voice_connector_termination.chime_voice_connector_terminations : k => v.calling_regions if v.calling_regions != null && length(v.calling_regions) > 0 }
}
output "chime_voice_connector_terminations_cidr_allow_list" {
  description = "Map of cidr_allow_list values across all chime_voice_connector_terminations, keyed the same as var.chime_voice_connector_terminations"
  value       = { for k, v in aws_chime_voice_connector_termination.chime_voice_connector_terminations : k => v.cidr_allow_list if v.cidr_allow_list != null && length(v.cidr_allow_list) > 0 }
}
output "chime_voice_connector_terminations_cps_limit" {
  description = "Map of cps_limit values across all chime_voice_connector_terminations, keyed the same as var.chime_voice_connector_terminations"
  value       = { for k, v in aws_chime_voice_connector_termination.chime_voice_connector_terminations : k => v.cps_limit if v.cps_limit != null }
}
output "chime_voice_connector_terminations_default_phone_number" {
  description = "Map of default_phone_number values across all chime_voice_connector_terminations, keyed the same as var.chime_voice_connector_terminations"
  value       = { for k, v in aws_chime_voice_connector_termination.chime_voice_connector_terminations : k => v.default_phone_number if v.default_phone_number != null && length(v.default_phone_number) > 0 }
}
output "chime_voice_connector_terminations_disabled" {
  description = "Map of disabled values across all chime_voice_connector_terminations, keyed the same as var.chime_voice_connector_terminations"
  value       = { for k, v in aws_chime_voice_connector_termination.chime_voice_connector_terminations : k => v.disabled if v.disabled != null }
}
output "chime_voice_connector_terminations_region" {
  description = "Map of region values across all chime_voice_connector_terminations, keyed the same as var.chime_voice_connector_terminations"
  value       = { for k, v in aws_chime_voice_connector_termination.chime_voice_connector_terminations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "chime_voice_connector_terminations_voice_connector_id" {
  description = "Map of voice_connector_id values across all chime_voice_connector_terminations, keyed the same as var.chime_voice_connector_terminations"
  value       = { for k, v in aws_chime_voice_connector_termination.chime_voice_connector_terminations : k => v.voice_connector_id if v.voice_connector_id != null && length(v.voice_connector_id) > 0 }
}

