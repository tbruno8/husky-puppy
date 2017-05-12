require 'rails_helper'

RSpec.describe SanzijingController, type: :controller do

  describe '#index' do
    it 'gets success ' do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
