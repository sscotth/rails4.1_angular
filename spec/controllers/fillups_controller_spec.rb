require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FillupsController do

  # This should return the minimal set of attributes required to create a valid
  # Fillup. As you add validations to Fillup, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "odometer" => "9.99" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FillupsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all fillups as @fillups" do
      fillup = Fillup.create! valid_attributes
      get :index, {}, valid_session
      assigns(:fillups).should eq([fillup])
    end
  end

  describe "GET show" do
    it "assigns the requested fillup as @fillup" do
      fillup = Fillup.create! valid_attributes
      get :show, {:id => fillup.to_param}, valid_session
      assigns(:fillup).should eq(fillup)
    end
  end

  describe "GET new" do
    it "assigns a new fillup as @fillup" do
      get :new, {}, valid_session
      assigns(:fillup).should be_a_new(Fillup)
    end
  end

  describe "GET edit" do
    it "assigns the requested fillup as @fillup" do
      fillup = Fillup.create! valid_attributes
      get :edit, {:id => fillup.to_param}, valid_session
      assigns(:fillup).should eq(fillup)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Fillup" do
        expect {
          post :create, {:fillup => valid_attributes}, valid_session
        }.to change(Fillup, :count).by(1)
      end

      it "assigns a newly created fillup as @fillup" do
        post :create, {:fillup => valid_attributes}, valid_session
        assigns(:fillup).should be_a(Fillup)
        assigns(:fillup).should be_persisted
      end

      it "redirects to the created fillup" do
        post :create, {:fillup => valid_attributes}, valid_session
        response.should redirect_to(Fillup.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved fillup as @fillup" do
        # Trigger the behavior that occurs when invalid params are submitted
        Fillup.any_instance.stub(:save).and_return(false)
        post :create, {:fillup => { "odometer" => "invalid value" }}, valid_session
        assigns(:fillup).should be_a_new(Fillup)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Fillup.any_instance.stub(:save).and_return(false)
        post :create, {:fillup => { "odometer" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested fillup" do
        fillup = Fillup.create! valid_attributes
        # Assuming there are no other fillups in the database, this
        # specifies that the Fillup created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Fillup.any_instance.should_receive(:update).with({ "odometer" => "9.99" })
        put :update, {:id => fillup.to_param, :fillup => { "odometer" => "9.99" }}, valid_session
      end

      it "assigns the requested fillup as @fillup" do
        fillup = Fillup.create! valid_attributes
        put :update, {:id => fillup.to_param, :fillup => valid_attributes}, valid_session
        assigns(:fillup).should eq(fillup)
      end

      it "redirects to the fillup" do
        fillup = Fillup.create! valid_attributes
        put :update, {:id => fillup.to_param, :fillup => valid_attributes}, valid_session
        response.should redirect_to(fillup)
      end
    end

    describe "with invalid params" do
      it "assigns the fillup as @fillup" do
        fillup = Fillup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Fillup.any_instance.stub(:save).and_return(false)
        put :update, {:id => fillup.to_param, :fillup => { "odometer" => "invalid value" }}, valid_session
        assigns(:fillup).should eq(fillup)
      end

      it "re-renders the 'edit' template" do
        fillup = Fillup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Fillup.any_instance.stub(:save).and_return(false)
        put :update, {:id => fillup.to_param, :fillup => { "odometer" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested fillup" do
      fillup = Fillup.create! valid_attributes
      expect {
        delete :destroy, {:id => fillup.to_param}, valid_session
      }.to change(Fillup, :count).by(-1)
    end

    it "redirects to the fillups list" do
      fillup = Fillup.create! valid_attributes
      delete :destroy, {:id => fillup.to_param}, valid_session
      response.should redirect_to(fillups_url)
    end
  end

end
