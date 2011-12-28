class ToysController < ApplicationController
  before_filter :find_toys

  # GET /toys
  #
  def index
    respond_to do |format|
      format.html               # index.html.erb
      format.js                 # index.js.erb
    end
  end

  # GET /toys/new
  def new
    @toy = Toy.new
    # expires_now
    respond_to do |format|
      format.html               # new.html.erb
      format.js                 # new.js.erb
    end
  end

  # POST /toys
  def create
    @toy = Toy.new(params[:toy])
    respond_to do |format|
      if @toy.save
        format.html { redirect_to toys_path, notice: 'Toy was successfully created.' }
        format.js               # create.js.erb
      else
        format.html { render action: "new" }
        format.js   { render :partial => 'error' }
      end
    end
  end

  # GET /toys/1/edit
  def edit
    @toy = Toy.find(params[:id])
    # expires_now
    respond_to do |format|
      format.html               # edit.html.erb
      format.js                 # edit.js.erb
    end
  end

  # PUT /toys/1
  def update
    @toy = Toy.find(params[:id])
    respond_to do |format|
      if @toy.update_attributes(params[:toy])
        format.html { redirect_to toys_path, notice: 'Toy was successfully updated.' }
        format.js               # update.js.erb
      else
        format.html { render action: "edit" }
        format.js   { render :partial => 'error' }
      end
    end
  end

  # GET /toys/1/delete
  def delete
    @toy = Toy.find(params[:id])
    respond_to do |format|
      format.html               # delete.html.erb
      format.js                 # delete.js.erb
    end
  end

  # DELETE /toys/1
  def destroy
    @toy = Toy.find(params[:id])
    @toy.destroy
    respond_to do |format|
      format.html { redirect_to toys_path }
      format.js                 # destroy.js.erb
    end
  end

  private

  def find_toys
    @toys = Toy.all
  end

end
