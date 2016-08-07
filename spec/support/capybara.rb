require "capybara/webkit"

Capybara.javascript_driver = if ENV['JAVASCRIPT_DRIVER'] # can be "selenium" or "webkit"
  ENV['JAVASCRIPT_DRIVER'].to_sym
else
  :webkit # as defult javascript_driver
end

# fail fast
def expect_no_js_errors
  if Capybara.current_driver == :webkit || Capybara.current_driver == :webkit_debug
    expect(page.driver.error_messages).to be_empty
  end
end
