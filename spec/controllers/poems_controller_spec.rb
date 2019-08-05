require 'rails_helper'



RSpec.describe PoemsController, type: :controller do

  let(:valid_attributes) {
    {
      title: "My String"
    }
  }

  let(:invalid_attributes) {
    {
      title: ""
    }
  }

  let(:new_attributes){
    {
      title: "Title",
       body: "Body",
    }
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Poem.create! new_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  # describe "GET #show" do
  #   it "returns a success response" do
  #     poem = Poem.create! valid_attributes
  #     get :show, params: {id: poem.to_param}, session: valid_session
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET #new" do
  #   it "returns a success response" do
  #     get :new, params: {}, session: valid_session
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET #edit" do
  #   it "returns a success response" do
  #     poem = Poem.create! valid_attributes
  #     get :edit, params: {id: poem.to_param}, session: valid_session
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "POST #create" do
  #   context "with valid params" do
  #     it "creates a new Poem" do
  #       expect {
  #         post :create, params: {poem: valid_attributes}, session: valid_session
  #       }.to change(Poem, :count).by(1)
  #     end
  #
  #     it "redirects to the created poem" do
  #       post :create, params: {poem: valid_attributes}, session: valid_session
  #       expect(response).to redirect_to(Poem.last)
  #     end
  #   end
  #
  #   context "with invalid params" do
  #     it "returns a success response (i.e. to display the 'new' template)" do
  #       post :create, params: {poem: invalid_attributes}, session: valid_session
  #       expect(response).to be_successful
  #     end
  #   end
  # end
  #
  # describe "PUT #update" do
  #   context "with valid params" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }
  #
  #     it "updates the requested poem" do
  #       poem = Poem.create! valid_attributes
  #       put :update, params: {id: poem.to_param, poem: new_attributes}, session: valid_session
  #       poem.reload
  #       skip("Add assertions for updated state")
  #     end
  #
  #     it "redirects to the poem" do
  #       poem = Poem.create! valid_attributes
  #       put :update, params: {id: poem.to_param, poem: valid_attributes}, session: valid_session
  #       expect(response).to redirect_to(poem)
  #     end
  #   end
  #
  #   context "with invalid params" do
  #     it "returns a success response (i.e. to display the 'edit' template)" do
  #       poem = Poem.create! valid_attributes
  #       put :update, params: {id: poem.to_param, poem: invalid_attributes}, session: valid_session
  #       expect(response).to be_successful
  #     end
  #   end
  # end
  #
  # describe "DELETE #destroy" do
  #   it "destroys the requested poem" do
  #     poem = Poem.create! valid_attributes
  #     expect {
  #       delete :destroy, params: {id: poem.to_param}, session: valid_session
  #     }.to change(Poem, :count).by(-1)
  #   end
  #
  #   it "redirects to the poems list" do
  #     poem = Poem.create! valid_attributes
  #     delete :destroy, params: {id: poem.to_param}, session: valid_session
  #     expect(response).to redirect_to(poems_url)
  #   end
  # end

end
