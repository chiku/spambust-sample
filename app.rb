#!/usr/bin/env ruby
# frozen_string_literal: true

# Author::    Chirantan Mitra
# Copyright:: Copyright (c) 2013-2020. All rights reserved
# License::   MIT

require 'sinatra'
require 'spambust'

# Understands how to use spambust gem
class SampleApplication < Sinatra::Base
  helpers Spambust::FormHelpers

  class << self
    def start_app
      run!
    end

    def direct_script_execution?
      app_file == $PROGRAM_NAME
    end
  end

  get '/' do
    erb :index, locals: { result: '...' }
  end

  post '/' do
    result = valid?('user', params) ? "Users is #{decrypt('user', params)}" : 'Faker!'
    erb :index, locals: { result: result }
  end

  start_app if direct_script_execution?
end
