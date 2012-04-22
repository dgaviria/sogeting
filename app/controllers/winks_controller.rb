class WinksController < ApplicationController
  # GET /winks
  # GET /winks.json
  def index
    @winks = Wink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @winks }
    end
  end

  # GET /winks/1
  # GET /winks/1.json
  def show
    @wink = Wink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wink }
    end
  end

  # GET /winks/new
  # GET /winks/new.json
  def new
    @wink = Wink.new
	
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wink }
    end
  end

  # GET /winks/1/edit
  def edit
    @wink = Wink.find(params[:id])
  end

  # POST /winks
  # POST /winks.json
  def create
    @wink = Wink.new(params[:wink])
	
	@friend = User.find(@wink.friend_id)
	@match = User.find(@wink.match_id)
	@me = User.find(@wink.user_id)
	
	MyMailer.wink_email(@friend, @match, @me).deliver
	
    respond_to do |format|
      if @wink.save
        format.html { redirect_to @wink, notice: 'Wink was successfully created.' }
        format.json { render json: @wink, status: :created, location: @wink }
      else
        format.html { render action: "new" }
        format.json { render json: @wink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /winks/1
  # PUT /winks/1.json
  def update
    @wink = Wink.find(params[:id])

    respond_to do |format|
      if @wink.update_attributes(params[:wink])
        format.html { redirect_to @wink, notice: 'Wink was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @wink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /winks/1
  # DELETE /winks/1.json
  def destroy
    @wink = Wink.find(params[:id])
    @wink.destroy

    respond_to do |format|
      format.html { redirect_to winks_url }
      format.json { head :ok }
    end
  end
end
