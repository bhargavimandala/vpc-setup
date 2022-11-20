module "my_vpc" {
    source = "git@github.com:bhargavimandala/terraform-aws-vpc-module.git?ref=v1.1"
    cidr_block = "10.0.0.0/16"
    product = "tesla"
    environment = "dev"
    publicsubnet_cidr = "10.0.1.0/28,10.0.2.0/28,10.0.5.0/28"
    public_az = "eu-west-2a,eu-west-2b,eu-west-2c"
    privatesubnet_cidr = "10.0.3.0/28,10.0.4.0/28,10.0.6.0/28"
    private_az = "eu-west-2c,eu-west-2a,eu-west-2b"
    costcode = "123"
   }

module "staging_vpc" {
    source = "git@github.com:bhargavimandala/terraform-aws-vpc-module.git?ref=v1.1"
    cidr_block = "10.15.0.0/22"
    product = "tesla"
    environment = "staging"
    publicsubnet_cidr = "10.15.0.0/24,10.15.1.0/24"
    public_az = "eu-west-2a,eu-west-2b"
    privatesubnet_cidr = "10.15.2.0/24,10.15.3.0/24"
    private_az = "eu-west-2c,eu-west-2a"
    costcode = "345"
    }

