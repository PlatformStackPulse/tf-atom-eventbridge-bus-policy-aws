resource "aws_cloudwatch_event_bus_policy" "this" {
  count = module.this.enabled ? 1 : 0

  event_bus_name = var.event_bus_name
  policy         = var.policy
}
