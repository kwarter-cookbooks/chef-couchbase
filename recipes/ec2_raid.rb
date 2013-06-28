include_recipe 'aws'

if node[:couchbase][:server][:volumes][:count]
  aws_ebs_raid 'couchbase_data_dir' do
    mount_point node[:couchbase][:server][:database_path]
    disk_count node[:couchbase][:server][:volumes][:count]
    disk_size node[:couchbase][:server][:volumes][:size]
    disk_type node[:couchbase][:server][:volumes][:use_piops] ? 'io1' : 'standard'
    disk_piops node[:couchbase][:server][:volumes][:piops]
    filesystem node[:couchbase][:server][:volumes][:fs]
    level node[:couchbase][:server][:volumes][:level]
    action [:auto_attach]
  end
end
