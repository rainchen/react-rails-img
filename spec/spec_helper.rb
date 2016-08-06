$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require "capybara/webkit"
require 'support/debug_helper'
require 'react/rails/img'

Capybara.javascript_driver = if ENV['JAVASCRIPT_DRIVER'] # can be "selenium" or "webkit"
  ENV['JAVASCRIPT_DRIVER'].to_sym
else
  :webkit # as defult javascript_driver
end
