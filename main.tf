resource "aws_vpc_peering_connection" "this" {
  peer_owner_id = var.peer_owner_id
  peer_vpc_id   = var.peer_vpc_id
  vpc_id        = var.vpc_id
  auto_accept   = var.auto_accept
  peer_region   = var.peer_region

  dynamic "accepter" {
    for_each = length(keys(var.accepter)) == 0 ? [] : var.accepter
    content {
      allow_remote_vpc_dns_resolution  = lookup(accepter.value, "allow_remote_vpc_dns_resolution", null)
      allow_classic_link_to_remote_vpc = lookup(accepter.value, "allow_classic_link_to_remote_vpc", null)
      allow_vpc_to_remote_classic_link = lookup(accepter.value, "allow_vpc_to_remote_classic_link", null)
    }
  }

  dynamic "requester" {
    for_each = length(keys(var.requester)) == 0 ? [] : var.requester
    content {
      allow_remote_vpc_dns_resolution  = lookup(accepter.value, "allow_remote_vpc_dns_resolution", null)
      allow_classic_link_to_remote_vpc = lookup(accepter.value, "allow_classic_link_to_remote_vpc", null)
      allow_vpc_to_remote_classic_link = lookup(accepter.value, "allow_vpc_to_remote_classic_link", null)
    }
  }
  tags = var.tags
}

### update Route tables ID

resource "aws_route" "requester_vpc_route" {
  count                     = length(var.requester_route_table_ids)
  route_table_id            = var.requester_route_table_ids[count.index]
  destination_cidr_block    = var.destination_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.this.id
}