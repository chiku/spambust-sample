#!/usr/bin/env ruby


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
