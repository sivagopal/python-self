execute 'setup_network_connection' do
    command 'setsebool -P httpd_can_network_connect1'
end
