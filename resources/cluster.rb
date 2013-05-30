actions :create_if_missing

default_action :create_if_missing

attribute :cluster, :kind_of => String, :name_attribute => true
attribute :exists, :kind_of => [TrueClass, FalseClass], :required => true
attribute :memory_quota_mb, :kind_of => Integer, :required => true, :callbacks => {
    "must be at least 256" => lambda { |quota| quota >= 256 }
}
attribute :username, :kind_of => String, :default => 'Administrator'
attribute :password, :kind_of => String, :required => true
