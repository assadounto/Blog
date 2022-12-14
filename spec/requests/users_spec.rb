require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:example) { get users_path }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'users' template" do
      expect(response).to render_template('users/index')
    end
  end

  describe 'GET /show' do
    before(:example) { get users_path }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'users' template" do
      expect(response).to render_template('layouts/application')
    end
  end
end
