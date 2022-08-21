variable "enabled" {
  type        = bool
  default     = true
  description = "Variable indicating whether deployment is enabled"
}

variable "helm_create_namespace" {
  type        = bool
  default     = true
  description = "Create the namespace if it does not yet exist"
}

variable "helm_chart_name" {
  type        = string
  default     = "argo-cd"
  description = "Helm chart name to be installed"
}

variable "helm_chart_version" {
  type        = string
  default     = "4.10.8"
  description = "Version of the Helm chart"
}

variable "helm_release_name" {
  type        = string
  default     = "argocd"
  description = "Helm release name"
}

variable "helm_repo_url" {
  type        = string
  default     = "https://argoproj.github.io/argo-helm"
  description = "Helm repository"
}

variable "helm_wait" {
  type        = bool
  default     = true
  description = "Will wait until all resources are in a ready state before marking the release as successful. It will wait for as long as timeout. Defaults to true."
}

variable "helm_timeout" {
  type        = number
  default     = 300
  description = "Time in seconds to wait for any individual kubernetes operation (like Jobs for hooks). Defaults to 300 seconds."
}

variable "helm_cleanup_on_fail" {
  type        = bool
  default     = false
  description = "Allow deletion of new resources created in this upgrade when upgrade fails. Defaults to false."
}

variable "helm_atomic" {
  type        = bool
  default     = false
  description = "If set, installation process purges chart on fail. The wait flag will be set automatically if atomic is used. Defaults to false."
}

variable "k8s_namespace" {
  type        = string
  default     = "argo"
  description = "The K8s namespace in which the argo-cd has been created"
}

variable "settings" {
  type        = map(any)
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values, see https://artifacthub.io/packages/helm/argo/argo-cd"
}

variable "values" {
  type        = string
  default     = ""
  description = "Additional yaml encoded values which will be passed to the Helm chart."
}
