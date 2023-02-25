# Helm
#### Step1: Create helm chart
````
helm create application
````
#### Step2: Change config of the helm 
````
Change port # to 3000 in values.yaml
````

#### Step3: Disable Liveliness/Readiness in templates deployment.yaml file 

          # livenessProbe:
          #   httpGet:
          #     path: /
          #     port: http
          # readinessProbe:
          #   httpGet:
          #     path: /
          #     port: http

#### Step3: Update Docker image accordingly
````

In values.yaml update 

image:
  repository:                       ### put your docker image path   
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: ""                           ### put your tag

````

#### Step4: Add cert and your domain name

````
ingress:
  enabled: true
  className: "nginx"
  annotations: 
    cert-manager.io/cluster-issuer: letsencrypt-prod
  hosts:
    - host: application.darimco.com                     ### Your domain name after application.
      paths:
        - path: /
          pathType: ImplementationSpecific
  tls: 
  - secretName: chart-example-tls
    hosts:
      - application.darimco.com                         ### Your domain name after application. -->

````
#### Step5: Create tf file ots.tf with the next content:

````

resource "helm_release" "ots" {
  name       = "ots"
  chart      = "./application"
  wait       = false
}

````

#### Step5: Create tf file provider.tf with the next content:

````
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

````
#### Step6: Release application 

````
terraform init
terraform apply -auto-approve
````

#### Step7: Go to your domain to verify the app is up and running

