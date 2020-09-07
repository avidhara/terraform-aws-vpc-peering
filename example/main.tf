provider "aws" {
  region = "us-west-2"

}

module "peering" {
  source                 = "../"
  peer_owner_id          = "xxx"
  peer_vpc_id            = "vpc-xxx"
  vpc_id                 = "vpc-xx"
  requester_route_table_ids         = ["rtb-xx", "rtb-xx"]
  destination_cidr_block = "10.0.0.0/16"
}
