require 'byebug'

# add some shortcuts methods
# http://www.rubydoc.info/gems/capybara#Debugging
def page!
  puts save_and_open_page
  puts save_and_open_screenshot

  puts "[DEBUG]page.html:"
  puts page.html

  if Capybara.current_driver == :webkit
    puts "[DEBUG]console_messages:"
    puts page.driver.console_messages
    # puts page.driver.error_messages
  end

  if Capybara.current_driver == :poltergeist
    page.driver.render('tmp/page.png') && `open tmp/page.png`
  end
end
