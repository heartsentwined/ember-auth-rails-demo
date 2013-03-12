require 'spec_helper'

describe Api::PostsController do
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
    before { get :show, id: post.id }
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
