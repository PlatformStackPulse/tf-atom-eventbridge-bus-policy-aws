variable "event_bus_name" {
  description = "Name of the event bus"
  type        = string
  validation {
    condition     = length(var.event_bus_name) > 0
    error_message = "event_bus_name must not be empty."
  }
}

variable "policy" {
  description = "JSON policy document for cross-account access"
  type        = string
  validation {
    condition     = length(var.policy) > 0
    error_message = "policy must not be empty."
  }
}
