default['audit']['fetcher'] = 'chef-server'
default['audit']['reporter'] = 'chef-server-automate'
default['audit']['profiles'] =
  case node['platform']
  when 'windows'
    default['audit']['profiles']['windows-baseline'] = { 'compliance': 'admin/windows-baseline' }
    default['audit']['profiles']['stig-windowsserver2019-cationly '] = { 'compliance': 'admin/stig-windowsserver2019-cationly ' }
  when 'ubuntu'
    default['audit']['profiles']['linux-baseline'] = { 'compliance': 'admin/linux-baseline' }
    default['audit']['profiles']['cis-ubuntu16.04lts-level1-server'] = { 'compliance': 'admin/cis-ubuntu16.04lts-level1-server' }
    default['audit']['profiles']['cis-ubuntu18.04lts-level1-server'] = { 'compliance': 'admin/cis-ubuntu18.04lts-level1-server' }
  when 'redhat'
    default['audit']['profiles']['linux-baseline'] = { 'compliance': 'admin/linux-baseline' }
    default['audit']['profiles']['cis-rhel7-level1-server'] = { 'compliance': 'admin/cis-rhel7-level1-server' }
  when 'centos'
    default['audit']['profiles']['linux-baseline'] = { 'compliance': 'admin/linux-baseline' }
    default['audit']['profiles']['cis-centos7-level1'] = { 'compliance': 'admin/cis-centos7-level1' }
  end

