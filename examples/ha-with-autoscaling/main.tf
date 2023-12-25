module "argocd_ha_with_autoscalling" {
  source             = "../../"
  helm_chart_version = "5.51.6"
  values = yamlencode({
    "global" : {
      "image" : {
        "imagePullPolicy" : "Always"
      }
    }
  })

  set = [
    {
      name  = "redis-ha.enabled"
      value = "true"
    },
    {
      name  = "controller.replicas"
      value = "1"
    },
    {
      name  = "server.autoscaling.enabled"
      value = "true"
    },
    {
      name  = "server.autoscaling.minReplicas"
      value = "2"
    },
    {
      name  = "repoServer.autoscaling.enabled"
      value = "true"
    },
    {
      name  = "repoServer.autoscaling.minReplicas"
      value = "2"
    },
    {
      name  = "applicationSet.replicas"
      value = "2"
    },
  ]
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
