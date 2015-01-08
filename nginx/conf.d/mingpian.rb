#!/usr/bin/env ruby

require 'erubis'
conf = {
  domain: 'yours.domain',
  backend_dir: '/path/to/backend/dir',
  backend_proxy: 'server:port',
  frontend_dist: '/path/to/frontend/dir',
  frontend_proxy: 'server:port',
}
template = IO.read("mingpian.conf.erb")
template = Erubis::Eruby.new(template)
str =  template.result(:conf => conf)
IO.write('mingpian-dev.conf', str)
