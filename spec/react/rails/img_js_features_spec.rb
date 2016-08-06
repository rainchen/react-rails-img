require 'rails_helper'

# test `<Img>` component
# test `Img.assetPath()`
# test `function imageTag()`
# test images in multi level directories

describe 'js features', type: :feature, js: true do
  before :each do
    visit '/posts/show'
  end

  # disable WARNING: The next major version of capybara-webkit will require at least version 5.0 of Qt. You're using version 4.8.6.
  # make sure capybara-webkit is working well first
  # refs:
  # https://github.com/thoughtbot/capybara-webkit/issues/680 # Doesn't see dynamic content (React.js)
  # https://github.com/thoughtbot/capybara-webkit/issues/885 # Support for QT 5.6
  # https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit
  # http://stackoverflow.com/questions/17075380/can-i-use-homebrews-qt5-with-capybara-webkit
  it "react_ujs is working" do
    expect(page).to have_content 'Title: Demo for gem react-rails-img'
  end

  it "component <Img> should be rendered as <img>" do
    expect(page).to have_content 'rails logo(100)'
    expect(page).to have_selector 'img[width="100"][src="/assets/rails-logo.svg"]'
  end

  it "Img.assetPath()" do
    expect(page).to have_content 'rails logo(50)'
    expect(page).to have_selector 'img[width="50"][src="/assets/rails-logo.svg"]'
  end

  it "function imageTag()" do
    expect(page).to have_content 'rails logo(25)'
    expect(page).to have_selector 'img[width="25"][src="/assets/rails-logo.svg"]'
  end

  it "images in multi level directories" do
    expect(page).to have_content 'reactjs logo'
    expect(page).to have_selector 'img[class="logo"][src="/assets/logo/reactjs-logo.svg"]'
  end
end
