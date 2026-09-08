resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "public_rt"
  }
}

resource "aws_route" "internet" {  #Add the table, gateway, and the destination
  destination_cidr_block = "0.0.0.0/0"
  route_table_id = aws_route_table.main.id
  gateway_id = aws_internet_gateway.main.id

}

resource "aws_route_table_association" "main" {
  subnet_id = aws_subnet.public.id
  route_table_id = aws_route_table.main.id
  
}