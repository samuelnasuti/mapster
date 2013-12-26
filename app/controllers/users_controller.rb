class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  
  def phoneparty

    if params[:search].present?
    @users = User.near(params[:search], params[:radius], :order => :distance)
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
   marker.lat user.latitude
   marker.lng user.longitude
     marker.picture({
       "url" => "assets/#{user.title}.png",
       "width" =>  32,
       "height" => 32})
   marker.infowindow "Sales: #{user.sales}<br />Title  #{user.title}"
   marker.json({ title: user.title})
  end

  else
    @users = User.near("14 Balligomingo Road, Conshohocken, PA", 15, :order => :distance)
   #@users = User.all
   @hash = Gmaps4rails.build_markers(@users) do |user, marker|
   marker.lat user.latitude
   marker.lng user.longitude
     marker.picture({
       "url" => "assets/#{user.title}.png",
       "width" =>  32,
       "height" => 32})
   marker.infowindow "Sales  #{user.sales}<br />Title  #{user.title}"
 
   marker.json({ title: user.title})
   #respond_to do |format|
    # format.html # index.html.erb
   #   format.json { render json: @users }
    end

  end

end

 

  def allofthem
  @search = User.search(params[:q])
  @users = @search.result
  end



  def index

  if params[:search].present?
    @users = User.near(params[:search], params[:radius], :order => :distance)
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
   marker.lat user.latitude
   marker.lng user.longitude
     marker.picture({
       "url" => "assets/#{user.title}.png",
       "width" =>  32,
       "height" => 32})
   marker.infowindow "Sales: #{user.sales}<br />Title  #{user.title}"
   marker.json({ title: user.title})
  end



  @searchcoordinates = Geocoder.coordinates(params[:search])


@hash = @hash << {lat: @searchcoordinates[0], lng: @searchcoordinates[1] }

  #@hash = @hash << {:lat=>39.95924, :lng=>-75.28755}
    
   

  else
    @users = User.near("14 Balligomingo Road, Conshohocken, PA", 15, :order => :distance)
   #@users = User.all
   @hash = Gmaps4rails.build_markers(@users) do |user, marker|
   marker.lat user.latitude
   marker.lng user.longitude
     marker.picture({
       "url" => "assets/#{user.title}.png",
       "width" =>  32,
       "height" => 32})
   marker.infowindow "Sales  #{user.sales}<br />Title  #{user.title}"
 
   marker.json({ title: user.title})
   #respond_to do |format|
    # format.html # index.html.erb
   #   format.json { render json: @users }
    end
  end

   

end



  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end


