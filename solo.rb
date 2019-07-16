file_cache_path    "${HOME}/chef-repo/cache"
file_backup_path   "${HOME}/chef-repo/python-self"
cookbook_path ["${HOME}/chef-repo/csoc-cookbooks"]
# An alternative and more useable method is to use ruby code to get directory path
#       cookbook_path File.expand_path('/cookbooks')
log_level :info
verbose_logging    false
