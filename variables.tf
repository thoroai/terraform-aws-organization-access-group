variable "user_names" {
  type        = list(string)
  description = "A list of IAM User names to associate with the Group"
}

variable "role_arns" {
  type        = map(string)
  default     = {}
  description = "A map of alias -> IAM Role ARNs the users in the Group can assume"
}

variable "require_mfa" {
  type        = string
  default     = "false"
  description = "Require the users to have MFA enabled"
}

variable "switchrole_url_template" {
  type        = string
  description = "URL template for the IAM console to switch to the roles"
  default     = "https://signin.aws.amazon.com/switchrole?account=%s&roleName=%s&displayName=%s"
}
