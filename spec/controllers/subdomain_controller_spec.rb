require 'rails_helper'

RSpec.describe SubdomainController, :type => :controller do
  context 'using basic test' do
    it 'access to the main domain' do
      get :index
      expect(response.body).to match 'subdomain:'
    end


    before do
      request.host = 'test.example.com'
    end

    it 'access to a subdomain' do
      get :index
      expect(response.body).to match "subdomain: test"
    end
  end
end
