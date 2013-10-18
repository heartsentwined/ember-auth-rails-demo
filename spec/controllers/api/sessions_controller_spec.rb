require 'spec_helper'

describe Api::SessionsController do
  let(:user) { Fabricate(:user) }

  before { user.ensure_authentication_token! }

  describe 'POST create' do
    context 'no param' do
      before { post :create }

      it_behaves_like 'http code', 400
    end

    context 'wrong credentials' do
      before { post :create, email: user.email, password: '' }

      it_behaves_like 'http code', 401
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

    context 'remember token auth' do
      it_behaves_like 'auth response' do
        let(:params) do
          user.remember_me!
          data = User.serialize_into_cookie(user)
          token = "#{data.first.first}-#{data.last}"
          { remember_token: token }
        end
      end
    end
  end

  describe 'DELETE destroy' do
    context 'no param' do
      before { delete :destroy }

      it_behaves_like 'http code', 400
    end

    context 'wrong credentials' do
      before { delete :destroy, auth_token: '' }

      it_behaves_like 'http code', 401
    end

    context 'normal auth token param' do
      before { delete :destroy, auth_token: user.authentication_token }
      subject { JSON.parse response.body }

      it { should include 'user_id' }

      it_behaves_like 'http code', 200
    end
  end
end
