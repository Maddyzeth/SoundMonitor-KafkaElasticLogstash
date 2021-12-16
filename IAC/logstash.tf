module "logstash" {
  source = "git::https://github.com/Maddyzeth/SoundMonitor-IAC-Infrastructure-Common.git//use-cases/ecs_logstash_elastic_services?ref=4.0.0"

  /*USER VARS*/
  cpu= "256"
  memory= "512"
  number_of_tasks="1"
  device_selector= "cpu"

  /*IAC VARS*/
  aws_provider_key= var.aws_provider_key
  aws_provider_secret= var.aws_provider_secret
  kafka_bootstrap_server_one= var.kafka_bootstrap_server_one
  aws_ecr_account_url = var.aws_ecr_account_url
  ecr_image_tag= var.ecr_image_tag
  repository_name= var.repository_name
}
