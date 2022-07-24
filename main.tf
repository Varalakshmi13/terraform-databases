module "mongodb" {
  source = "./vendor/modules/mongodb"
  ENV = var.ENV
  WORKSTATION_IP = var.WORKSTATION_IP
  DOCTDB_PORT = var.DOCTDB_PORT
  DOCDB_INSTANCE_CLASS = var.DOCDB_INSTANCE_CLASS
  DOCDB_INSTANCE_COUNT = var.DOCDB_INSTANCE_COUNT

}

module "redis" {
  source = "./vendor/modules/redis"
  ENV = var.ENV
}

module "mysql" {
  source = "./vendor/modules/mysql"
  ENV = var.ENV
  WORKSTATION_IP = var.WORKSTATION_IP
  RDS_MYSQL_PORT = var.RDS_MYSQL_PORT
  RDS_MYSQL_STORAGE = var.RDS_MYSQL_STORAGE
  RDS_ENGINE_VERSION = var.RDS_ENGINE_VERSION
  RDS_INSTANCE_TYPE = var.RDS_INSTANCE_TYPE
}

module "rabbitmq" {
  source = "./vendor/modules/rabbitmq"
  ENV = var.ENV
}
