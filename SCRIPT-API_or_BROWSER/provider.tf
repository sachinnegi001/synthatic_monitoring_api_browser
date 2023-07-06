terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}
provider "newrelic" {
  account_id = "3930391"
  api_key = "NRAK-FDMXSHJBBT336RBX0J747T8P1GN"   # usually prefixed with 'NRAK'
  region = "US"                        # Valid regions are US and EU
}