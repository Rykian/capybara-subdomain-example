require 'capybara/rails'
require 'capybara/poltergeist'

RSpec.configure do
  Capybara.default_host = 'http://lvh.me'
  Capybara.javascript_driver = :poltergeist
  Capybara.always_include_port = true
end

# Switch subdomain during the block
#
# @param [String] subdomain subdomain used during block test
# @yield Block to be executed during subdomain switch
def switch_subdomain(subdomain)
  Capybara.app_host = "http://#{subdomain}.lvh.me"
  yield
  Capybara.app_host = Capybara.default_host
end
