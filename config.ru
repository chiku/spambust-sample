#!/usr/bin/env ruby
#\ -p 8001

# Author::    Chirantan Mitra
# Copyright:: Copyright (c) 2013-2016. All rights reserved
# License::   MIT

require File.join(File.dirname(__FILE__), 'app')

set :environment, ENV['environment'] || :development

FileUtils.mkdir_p 'log'
log = File.new('log/sinatra.log', 'a+')

$stdout.reopen(log)
$stderr.reopen(log)

run SampleApplication
