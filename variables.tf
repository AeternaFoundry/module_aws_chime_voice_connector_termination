variable "chime_voice_connector_terminations" {
  description = <<EOT
Map of chime_voice_connector_terminations, attributes below
Required:
    - calling_regions
    - cidr_allow_list
    - voice_connector_id
Optional:
    - cps_limit
    - default_phone_number
    - disabled
    - region
EOT

  type = map(object({
    calling_regions      = set(string)
    cidr_allow_list      = set(string)
    voice_connector_id   = string
    cps_limit            = optional(number)
    default_phone_number = optional(string)
    disabled             = optional(bool)
    region               = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.chime_voice_connector_terminations : (
        alltrue([for x in v.calling_regions : length(x) >= 2 && length(x) <= 2])
      )
    ])
    error_message = "must be between 2 and 2 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.chime_voice_connector_terminations : (
        v.cps_limit == null || (v.cps_limit >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.chime_voice_connector_terminations : (
        v.default_phone_number == null || (can(regex("^\\+?[1-9]\\d{1,14}$", v.default_phone_number)))
      )
    ])
    error_message = "must match ^\\+?[1-9]\\d{1,14}$"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

