require 'spec_helper'

describe Api::SessionsController do
  let(:user) { Fabricate(:user) }

  before { user.ensure_authentication_token! }

  describe 'POST create' do
    context 'no param' do
      before { post :create }

      it 'returns http 400' do
        response.response_code.should == 400
      end
    end

    context 'wrong credentials' do
      before { post :create, email: user.email, password: '' }

      it 'returns http 401' do
        response.response_code.should == 401
      end
    end

    context 'normal email + password auth' do
      before { post :create, email: user.email, password: user.password }
      subject { JSON.parse response.body }

      it { should include 'user_id' }
      it { should include 'auth_token' }

      it 'returns http 201' do
        response.response_code.should == 201
      end
    end
  end

  describe 'DELETE destroy' do
    context 'no param' do
      before { delete :destroy }

      it 'returns http 400' do
        response.response_code.should == 400
      end
    end

    context 'wrong credentials' do
      before { delete :destroy, auth_token: '' }

      it 'returns http 401' do
        response.response_code.should == 401
      end
    end

    context 'normal auth token param' do
      before { delete :destroy, auth_token: user.authentication_token }
      subject { JSON.parse response.body }

      it { should include 'user_id' }

      it 'returns http 200' do
        response.response_code.should == 200
      end
    end
  end
end
