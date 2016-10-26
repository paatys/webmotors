require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe '#index' do
    it 'Get success index' do
      expect(response.status).to eq 200
    end
    it 'Create all brands_car' do
      Make.destroy_all
      get :index
      expect(Make.all.size).to eq 179
    end

    it 'render index layout' do
      get :index
      expect(response).to render_template(:index)
    end

    it 'get all brands' do
      get :index
      make = Make.all
      expect(assigns(:makes)).to eq(make)
    end
  end
end
