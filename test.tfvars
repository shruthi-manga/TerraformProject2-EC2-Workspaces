ami           = "ami-0341d95f75f311023"
region        = "us-east-1"
instancetype  = "t3.medium"
instancecount = 2
env           = "test"
tagsvariable = {
  "name"           = "dev-server"
  "howmanyservers" = "2"

}