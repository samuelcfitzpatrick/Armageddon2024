resource "tls_private_key" "ArmageddonInSaoPaolo" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
data "tls_public_key" "ArmageddonInSaoPaolo" {
  private_key_pem = tls_private_key.ArmageddonInSaoPaolo.private_key_pem
}
output "private_key_saopaolo" {
  value     = tls_private_key.ArmageddonInSaoPaolo.private_key_pem
  sensitive = true
}
output "public_key_saopaolo" {
  value = data.tls_public_key.ArmageddonInSaoPaolo.public_key_openssh
}


#tokyo
resource "tls_private_key" "ArmageddonInTokyo" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
data "tls_public_key" "ArmageddonInTokyo" {
  private_key_pem = tls_private_key.ArmageddonInTokyo.private_key_pem
}
output "private_key_Tokyo" {
  value     = tls_private_key.ArmageddonInTokyo.private_key_pem
  sensitive = true
}
output "public_key_Tokyo" {
  value = data.tls_public_key.ArmageddonInTokyo.public_key_openssh
}

#london
resource "tls_private_key" "ArmageddonInlondon" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
data "tls_public_key" "ArmageddonInlondon" {
  private_key_pem = tls_private_key.ArmageddonInlondon.private_key_pem
}
output "private_key_london" {
  value     = tls_private_key.ArmageddonInlondon.private_key_pem
  sensitive = true
}
output "public_key_london" {
  value = data.tls_public_key.ArmageddonInlondon.public_key_openssh
}

#newyork
resource "tls_private_key" "ArmageddonInnewyork" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
data "tls_public_key" "ArmageddonInnewyork" {
  private_key_pem = tls_private_key.ArmageddonInnewyork.private_key_pem
}
output "private_key_newyork" {
  value     = tls_private_key.ArmageddonInnewyork.private_key_pem
  sensitive = true
}
output "public_key_newyork" {
  value = data.tls_public_key.ArmageddonInnewyork.public_key_openssh
}

#sydney
resource "tls_private_key" "ArmageddonInsydney" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
data "tls_public_key" "ArmageddonInsydney" {
  private_key_pem = tls_private_key.ArmageddonInsydney.private_key_pem
}
output "private_key_sydney" {
  value     = tls_private_key.ArmageddonInsydney.private_key_pem
  sensitive = true
}
output "public_key_sydney" {
  value = data.tls_public_key.ArmageddonInsydney.public_key_openssh
}

#Ncalifornia
resource "tls_private_key" "ArmageddonInNcalifornia" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
data "tls_public_key" "ArmageddonInNcalifornia" {
  private_key_pem = tls_private_key.ArmageddonInNcalifornia.private_key_pem
}
output "private_key_Ncalifornia" {
  value     = tls_private_key.ArmageddonInNcalifornia.private_key_pem
  sensitive = true
}
output "public_key_Ncalifornia" {
  value = data.tls_public_key.ArmageddonInNcalifornia.public_key_openssh
}

#Hongkong
resource "tls_private_key" "ArmageddonInHongkong" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
data "tls_public_key" "ArmageddonInHongkong" {
  private_key_pem = tls_private_key.ArmageddonInHongkong.private_key_pem
}
output "private_key_Hongkong" {
  value     = tls_private_key.ArmageddonInHongkong.private_key_pem
  sensitive = true
}
output "public_key_Hongkong" {
  value = data.tls_public_key.ArmageddonInHongkong.public_key_openssh
}

