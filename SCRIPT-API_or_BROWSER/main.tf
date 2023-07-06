
resource "newrelic_synthetics_script_monitor" "monitor" {
for_each = var.script_Browser_monitor
  status           = each.value.status
  name             = each.value.name
  type             = each.value.type
  locations_public = [for i in each.value.locations_public:i]
  period           = each.value.period

  enable_screenshot_on_failure_and_script = each.value.enable_screenshot_on_failure_and_script

  script = file("${each.value.script}")

  runtime_type_version = each.value.runtime_type_version
  runtime_type         = each.value.runtime_type
  script_language      = each.value.script_language


}

resource "newrelic_synthetics_script_monitor" "monitor2" {
  for_each = var.script_api_monitor
  status               = each.value.status
  name                 = each.value.name
  type                 = each.value.type
  locations_public     = [for i in each.value.locations_public:i ]
  period               = each.value.period

  script               = file("${each.value.script}")

  script_language      = each.value.script_language
  runtime_type         = each.value.runtime_type
  runtime_type_version = each.value.runtime_type_version


}

