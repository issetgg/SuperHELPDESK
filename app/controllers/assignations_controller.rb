class AssignationsController < ApplicationController

  before_filter :require_user

  # GET /assignations
  # GET /assignations.json
  def index
    @assignation = Assignation.all;
    @assignation_user = Assignation.user(current_user.category);
    @category = Category.assignation(current_user.category);
    @user = User.assignation(current_user.category);
    @users = User.all;
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assignations }
    end
  end

  # GET /assignations/1
  # GET /assignations/1.json
  def show
    @assignation = Assignation.find(params[:id])
    @category = Category.assignation(current_user.category);
    @user = User.assignation(current_user.category);
      respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assignation }
    end
  end

  # GET /assignations/new
  # GET /assignations/new.json
  def new
    @assignation = Assignation.new
    @category = Category.assignation(current_user.category);
    @user = User.assignation(current_user.category);
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assignation }
    end
  end

  # GET /assignations/1/edit
  def edit
    @assignation = Assignation.find(params[:id])
    @category = Category.assignation(current_user.category);
    @user = User.assignation(current_user.category);
  end

  # POST /assignations
  # POST /assignations.json
  def create
    @assignation = Assignation.new(params[:assignation])
    respond_to do |format|
      if @assignation.save
        format.html { redirect_to @assignation, notice: 'Assignation was successfully created.' }
        format.json { render json: @assignation, status: :created, location: @assignation }
      else
        format.html { render action: "new" }
        format.json { render json: @assignation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assignations/1
  # PUT /assignations/1.json
  def update
    @assignation = Assignation.find(params[:id])
    @category = Category.assignation(current_user.category);
    @user = User.assignation(current_user.category);
    respond_to do |format|
      if @assignation.update_attributes(params[:assignation])
        format.html { redirect_to @assignation, notice: 'Assignation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assignation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignations/1
  # DELETE /assignations/1.json
  def destroy
    @assignation = Assignation.find(params[:id])
    #@category = Category.assignation(current_user.category);
    #@user = User.assignation(current_user.category);
    @assignation.destroy
    respond_to do |format|
      format.html { redirect_to assignations_url }
      format.json { head :no_content }
    end
  end
end
