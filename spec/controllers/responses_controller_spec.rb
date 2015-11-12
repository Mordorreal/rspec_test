require 'rails_helper'

RSpec.describe ResponsesController, type: :controller do
  describe 'GET #show' do
    before do
      @testrequest = Request.create
      @testresponse = @testrequest.responses.create
      get :show, request_id: @testrequest.id, response_id: @testresponse.id
    end
    it 'show specific response selected by id if user owner of response or user owner of parent request' do
      expect(assigns(:response)).to eq @testresponse
    end
  end
end
