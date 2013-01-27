class FilmsController < ApplicationController
  # GET /silms
  # GET /silms.json
 
def index
 
    
  if params[:tag]
    @silms = Film.tagged_with(params[:tag])
  else
   
    if params[:title]
      @silms = Film.search(params[:title])
    else
    @silms = Film.all
    end
  end

     respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @silms }
    end
end

  # GET /silms/1
  # GET /silms/1.json
  def show
    @silm = Film.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @silm }
    end
  end

  # GET /silms/new
  # GET /silms/new.json
  def new
    @silm = Film.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @silm }
    end
  end
 def crop
    @silm = Film.find(params[:id])
  end
  # GET /silms/1/edit
  def edit
    @silm = Film.find(params[:id])
  end

  # POST /silms
  # POST /silms.json
  def create
    @silm = Film.new(params[:silm])

    respond_to do |format|
      if @silm.save
        format.html { redirect_to @silm, notice: 'Film was successfully created.' }
        format.json { render json: @silm, status: :created, location: @silm }
      else
        format.html { render action: "new" }
        format.json { render json: @silm.errors, status: :unprocessable_entity }
      end
    end
  end
  def create
    auth_hash = request.env['omniauth.auth']
    render :text => auth_hash.inspect
  end
  # PUT /silms/1
  # PUT /silms/1.json
  def update
    @silm = Film.find(params[:id])

    respond_to do |format|
      if @silm.update_attributes(params[:silm])
        format.html { redirect_to @silm, notice: 'Film was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @silm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /silms/1
  # DELETE /silms/1.json
  def destroy
    @silm = Film.find(params[:id])
    @silm.destroy

    respond_to do |format|
      format.html { redirect_to silms_url }
      format.json { head :no_content }
    end
  end
end
