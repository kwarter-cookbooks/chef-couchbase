actions :modify
default_action :modify

attribute :id, :kind_of => String, :name_attribute => true
attribute :database_path, :kind_of => String, :default => "/opt/couchbase/var/lib/couchbase/data"
attribute :username, :kind_of => String, :default => 'Administrator'
attribute :password, :kind_of => String, :required => true
