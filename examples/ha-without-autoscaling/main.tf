module "argocd_ha_without_autoscalling" {
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
      name  = "server.replicas"
      value = "1"
    },
    {
      name  = "repoServer.replicas"
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
