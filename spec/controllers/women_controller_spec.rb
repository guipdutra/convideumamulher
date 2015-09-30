require 'rails_helper'


RSpec.describe WomenController, :type => :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all women as @women" do
      woman = Woman.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:women)).to eq([woman])
    end
  end

  describe "GET show" do
    it "assigns the requested woman as @woman" do
      woman = Woman.create! valid_attributes
      get :show, {:id => woman.to_param}, valid_session
      expect(assigns(:woman)).to eq(woman)
    end
  end

  describe "GET new" do
    it "assigns a new woman as @woman" do
      get :new, {}, valid_session
      expect(assigns(:woman)).to be_a_new(Woman)
    end
  end

  describe "GET edit" do
    it "assigns the requested woman as @woman" do
      woman = Woman.create! valid_attributes
      get :edit, {:id => woman.to_param}, valid_session
      expect(assigns(:woman)).to eq(woman)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Woman" do
        expect {
          post :create, {:woman => valid_attributes}, valid_session
        }.to change(Woman, :count).by(1)
      end

      it "assigns a newly created woman as @woman" do
        post :create, {:woman => valid_attributes}, valid_session
        expect(assigns(:woman)).to be_a(Woman)
        expect(assigns(:woman)).to be_persisted
      end

      it "redirects to the created woman" do
        post :create, {:woman => valid_attributes}, valid_session
        expect(response).to redirect_to(Woman.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved woman as @woman" do
        post :create, {:woman => invalid_attributes}, valid_session
        expect(assigns(:woman)).to be_a_new(Woman)
      end

      it "re-renders the 'new' template" do
        post :create, {:woman => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested woman" do
        woman = Woman.create! valid_attributes
        put :update, {:id => woman.to_param, :woman => new_attributes}, valid_session
        woman.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested woman as @woman" do
        woman = Woman.create! valid_attributes
        put :update, {:id => woman.to_param, :woman => valid_attributes}, valid_session
        expect(assigns(:woman)).to eq(woman)
      end

      it "redirects to the woman" do
        woman = Woman.create! valid_attributes
        put :update, {:id => woman.to_param, :woman => valid_attributes}, valid_session
        expect(response).to redirect_to(woman)
      end
    end

    describe "with invalid params" do
      it "assigns the woman as @woman" do
        woman = Woman.create! valid_attributes
        put :update, {:id => woman.to_param, :woman => invalid_attributes}, valid_session
        expect(assigns(:woman)).to eq(woman)
      end

      it "re-renders the 'edit' template" do
        woman = Woman.create! valid_attributes
        put :update, {:id => woman.to_param, :woman => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested woman" do
      woman = Woman.create! valid_attributes
      expect {
        delete :destroy, {:id => woman.to_param}, valid_session
      }.to change(Woman, :count).by(-1)
    end

    it "redirects to the women list" do
      woman = Woman.create! valid_attributes
      delete :destroy, {:id => woman.to_param}, valid_session
      expect(response).to redirect_to(women_url)
    end
  end

  describe "#search" do
    it "finds women" do
      allow(Woman).to receive(:search)
      query_term = "could be anything"
      get :search, query: query_term
      expect(Woman).to have_received(:search).with(query_term)
    end

    it "renders index" do
      get :search
      expect(response).to render_template(:index)
    end

  end

end
