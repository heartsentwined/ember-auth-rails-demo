require 'spec_helper'

describe Api::PostsController do
  let(:user) { Fabricate(:user) }
  let(:post) { Fabricate(:post) }
  before { post } # initialize it

  describe 'GET index' do
    before { get :index }
    subject { JSON.parse response.body }

    it 'wraps around posts' do should include 'posts' end

    it 'returns http 200' do
      response.response_code.should == 200
    end
  end

  describe 'GET show' do
    context 'unauthorized' do
      before { get :show, id: post.id }

      it 'returns http 401' do
        response.response_code.should == 401
      end
    end

    context 'authorized' do
      before do
        user.ensure_authentication_token!
        get :show, id: post.id, auth_token: user.authentication_token
      end
      subject { JSON.parse response.body }

      it 'wraps around post' do should include 'post' end
      context 'inside post' do
        subject { (JSON.parse response.body)['post'] }
        it 'includes id' do should include 'id' end
        it 'includes title' do should include 'title' end
        it 'includes param' do should include 'param' end
      end

      it 'returns http 200' do
        response.response_code.should == 200
      end
    end
  end
end
