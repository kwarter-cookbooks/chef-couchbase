name "couchbase"
maintainer "getaroom"
maintainer_email "devteam@roomvaluesteam.com"
license "MIT"
description "Installs/Configures Couchbase"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version "2.0.4"

supports "debian"
supports "ubuntu"

depends "apt"
depends "aws"

recipe "couchbase::server", "Installs couchbase-server"
recipe "couchbase::client", "Installs libcouchbase"
