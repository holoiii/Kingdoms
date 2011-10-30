require 'spec_helper'

describe KingdomsController do

  # This should return the minimal set of attributes required to create a valid
  # Kingdom. As you add validations to Kingdom, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all kingdoms as @kingdoms" do
      kingdom = Kingdom.create! valid_attributes
      get :index
      assigns(:kingdoms).should eq([kingdom])
    end
  end

  describe "GET show" do
    it "assigns the requested kingdom as @kingdom" do
      kingdom = Kingdom.create! valid_attributes
      get :show, :id => kingdom.id.to_s
      assigns(:kingdom).should eq(kingdom)
    end
  end

  describe "GET new" do
    it "assigns a new kingdom as @kingdom" do
      get :new
      assigns(:kingdom).should be_a_new(Kingdom)
    end
  end

  describe "GET edit" do
    it "assigns the requested kingdom as @kingdom" do
      kingdom = Kingdom.create! valid_attributes
      get :edit, :id => kingdom.id.to_s
      assigns(:kingdom).should eq(kingdom)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Kingdom" do
        expect {
          post :create, :kingdom => valid_attributes
        }.to change(Kingdom, :count).by(1)
      end

      it "assigns a newly created kingdom as @kingdom" do
        post :create, :kingdom => valid_attributes
        assigns(:kingdom).should be_a(Kingdom)
        assigns(:kingdom).should be_persisted
      end

      it "redirects to the created kingdom" do
        post :create, :kingdom => valid_attributes
        response.should redirect_to(Kingdom.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved kingdom as @kingdom" do
        # Trigger the behavior that occurs when invalid params are submitted
        Kingdom.any_instance.stub(:save).and_return(false)
        post :create, :kingdom => {}
        assigns(:kingdom).should be_a_new(Kingdom)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Kingdom.any_instance.stub(:save).and_return(false)
        post :create, :kingdom => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested kingdom" do
        kingdom = Kingdom.create! valid_attributes
        # Assuming there are no other kingdoms in the database, this
        # specifies that the Kingdom created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Kingdom.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => kingdom.id, :kingdom => {'these' => 'params'}
      end

      it "assigns the requested kingdom as @kingdom" do
        kingdom = Kingdom.create! valid_attributes
        put :update, :id => kingdom.id, :kingdom => valid_attributes
        assigns(:kingdom).should eq(kingdom)
      end

      it "redirects to the kingdom" do
        kingdom = Kingdom.create! valid_attributes
        put :update, :id => kingdom.id, :kingdom => valid_attributes
        response.should redirect_to(kingdom)
      end
    end

    describe "with invalid params" do
      it "assigns the kingdom as @kingdom" do
        kingdom = Kingdom.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Kingdom.any_instance.stub(:save).and_return(false)
        put :update, :id => kingdom.id.to_s, :kingdom => {}
        assigns(:kingdom).should eq(kingdom)
      end

      it "re-renders the 'edit' template" do
        kingdom = Kingdom.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Kingdom.any_instance.stub(:save).and_return(false)
        put :update, :id => kingdom.id.to_s, :kingdom => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested kingdom" do
      kingdom = Kingdom.create! valid_attributes
      expect {
        delete :destroy, :id => kingdom.id.to_s
      }.to change(Kingdom, :count).by(-1)
    end

    it "redirects to the kingdoms list" do
      kingdom = Kingdom.create! valid_attributes
      delete :destroy, :id => kingdom.id.to_s
      response.should redirect_to(kingdoms_url)
    end
  end

end
