actions :create

default_action :create

attribute :bucket, :kind_of => String, :name_attribute => true
attribute :cluster, :kind_of => String, :default => "default"
attribute :exists, :kind_of => [TrueClass, FalseClass], :required => true
attribute :memory_quota_mb, :kind_of => Integer, :callbacks => {
    "must be at least 100" => lambda { |quota| quota >= 100 },
}
attribute :memory_quota_percent, :kind_of => Numeric, :callbacks => {
    "must be a positive number"         => lambda { |percent| percent > 0.0 },
    "must be less than or equal to 1.0" => lambda { |percent| percent <= 1.0 },
}
attribute :replicas, :kind_of => [Integer, FalseClass], :default => 1, :callbacks => {
    "must be a non-negative integer" => lambda { |replicas| !replicas || replicas > -1 },
}
attribute :type, :kind_of => String, :default => "couchbase", :callbacks => {
    "must be either couchbase or memcached" => lambda { |type| %w(couchbase memcached).include? type },
}
attribute :username, :kind_of => String, :default => 'Administrator'
attribute :password, :kind_of => String, :required => true
