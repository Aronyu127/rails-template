require 'rails_helper'

RSpec.describe BaseController, type: :request do
  it 'GET /' do
    get '/'
    expect(response).to be_success
    expect(response_meta_title).to be_present
  end

  it 'GET /robots.txt' do
    get '/robots.txt'
    expect(response).to be_success
    expect(response.body).not_to match('<html')
    get '/robots'
    expect(response.status).to eq(404)
  end
end
