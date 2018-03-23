require 'rails_helper'

describe ComplaintsController do
  describe '#index' do
    it 'return 200' do
      get :index
      expect(response.status).to be 200
    end
  end
  describe '#new' do
    it 'return 200' do
      get :new
      expect(response.status).to be 200
    end
  end
end
