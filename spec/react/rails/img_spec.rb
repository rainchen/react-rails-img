require 'rails_helper'

describe React::Rails::Img, type: :request do
  it 'should be working with asset pipline' do
    get '/assets/application.js'
    expect(response).to be_success

    # enable to load by Sprockets
    expect(response.body).not_to match "Sprockets::FileNotFound"

    # no syntax error
    expect(response.body).not_to match "ExecJS::RuntimeError: SyntaxError"

    # got the correct content
    expect(response.body).to match "var Img = React.createClass"
  end
end
