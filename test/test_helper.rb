require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::Console
SimpleCov.start do
  command_name 'exchagerate-api'
  track_files 'lib/**/*.rb'
  add_filter 'test/'
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'exchangerate'

require 'minitest/autorun'
