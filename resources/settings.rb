actions :modify
default_action :modify

attribute :group, :kind_of => String, :name_attribute => true
attribute :settings, :kind_of => Hash, :required => true
attribute :username, :kind_of => String, :default => 'Administrator'
attribute :password, :kind_of => String, :required => true
