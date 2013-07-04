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

describe MemsController do

  # This should return the minimal set of attributes required to create a valid
  # Mem. As you add validations to Mem, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MemsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all mems as @mems" do
      mem = Mem.create! valid_attributes
      get :index, {}, valid_session
      assigns(:mems).should eq([mem])
    end
  end

  describe "GET show" do
    it "assigns the requested mem as @mem" do
      mem = Mem.create! valid_attributes
      get :show, {:id => mem.to_param}, valid_session
      assigns(:mem).should eq(mem)
    end
  end

  describe "GET new" do
    it "assigns a new mem as @mem" do
      get :new, {}, valid_session
      assigns(:mem).should be_a_new(Mem)
    end
  end

  describe "GET edit" do
    it "assigns the requested mem as @mem" do
      mem = Mem.create! valid_attributes
      get :edit, {:id => mem.to_param}, valid_session
      assigns(:mem).should eq(mem)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Mem" do
        expect {
          post :create, {:mem => valid_attributes}, valid_session
        }.to change(Mem, :count).by(1)
      end

      it "assigns a newly created mem as @mem" do
        post :create, {:mem => valid_attributes}, valid_session
        assigns(:mem).should be_a(Mem)
        assigns(:mem).should be_persisted
      end

      it "redirects to the created mem" do
        post :create, {:mem => valid_attributes}, valid_session
        response.should redirect_to(Mem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved mem as @mem" do
        # Trigger the behavior that occurs when invalid params are submitted
        Mem.any_instance.stub(:save).and_return(false)
        post :create, {:mem => { "title" => "invalid value" }}, valid_session
        assigns(:mem).should be_a_new(Mem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Mem.any_instance.stub(:save).and_return(false)
        post :create, {:mem => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested mem" do
        mem = Mem.create! valid_attributes
        # Assuming there are no other mems in the database, this
        # specifies that the Mem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Mem.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => mem.to_param, :mem => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested mem as @mem" do
        mem = Mem.create! valid_attributes
        put :update, {:id => mem.to_param, :mem => valid_attributes}, valid_session
        assigns(:mem).should eq(mem)
      end

      it "redirects to the mem" do
        mem = Mem.create! valid_attributes
        put :update, {:id => mem.to_param, :mem => valid_attributes}, valid_session
        response.should redirect_to(mem)
      end
    end

    describe "with invalid params" do
      it "assigns the mem as @mem" do
        mem = Mem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Mem.any_instance.stub(:save).and_return(false)
        put :update, {:id => mem.to_param, :mem => { "title" => "invalid value" }}, valid_session
        assigns(:mem).should eq(mem)
      end

      it "re-renders the 'edit' template" do
        mem = Mem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Mem.any_instance.stub(:save).and_return(false)
        put :update, {:id => mem.to_param, :mem => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested mem" do
      mem = Mem.create! valid_attributes
      expect {
        delete :destroy, {:id => mem.to_param}, valid_session
      }.to change(Mem, :count).by(-1)
    end

    it "redirects to the mems list" do
      mem = Mem.create! valid_attributes
      delete :destroy, {:id => mem.to_param}, valid_session
      response.should redirect_to(mems_url)
    end
  end

end
