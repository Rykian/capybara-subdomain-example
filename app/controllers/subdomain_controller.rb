class SubdomainController < ApplicationController
  def index
    render text: "subdomain: #{request.subdomain}"
  end
end
