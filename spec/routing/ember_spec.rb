require 'spec_helper'
require 'securerandom'

describe 'ember wildcard route' do
  let(:route) { SecureRandom.hex(8) }

  it 'routes to home#index' do
    expect(get route).to route_to(
      controller: 'home',
      action: 'index',
      ember: route
    )
  end
end
