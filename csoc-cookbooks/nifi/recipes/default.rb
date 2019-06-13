remote_file "/opt/nifi.1.8.0-bin.tar.gz" do
   source "https://archive.apache.org/dist/nifi/1.8.0/nifi-1.8.0-bin.tar.gz"
end

execute 'unzip_and_install_nifi' do
    cwd '/opt'
    command 'tar -xvzf /opt/nifi.1.8.0-bin.tar.gz'
end
