# audit_contoso

## centos
{ 'compliance': 'admin/linux-baseline' }  
{ 'compliance': 'admin/cis-centos7-level1' }

## ubuntu
{ 'compliance': 'admin/linux-baseline' }  
{ 'compliance': 'admin/cis-ubuntu16.04lts-level1-server' }  
{ 'compliance': 'admin/cis-ubuntu18.04lts-level1-server' }

## redhat
{ 'compliance': 'admin/linux-baseline' }  
{ 'compliance': 'admin/cis-rhel7-level1-server' }

## windows
{ 'compliance': 'admin/windows-baseline' }  
{ 'compliance': 'admin/stig-windowsserver2019-cationly ' }

## metadata.rb
depends 'audit'

## recipes/default.rb
include_recipe 'audit::default'

