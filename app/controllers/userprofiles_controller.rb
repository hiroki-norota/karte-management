class UserprofilesController < ApplicationController

  def index
    @userprofiles = Userprofile.all
  end

  def new
    @userprofile = Userprofile.new
  end

  def create
    @userprofile = Userprofile.new(userprofile_params)
    @userprofile.save

    redirect_to root_path
    #redirect_to "userprofile/#{@userprofile.id}"
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @userprofile = Userprofile.find(params[:id])
  end

  def search
  end

  private
  
  def userprofile_params
    params.require(:userprofile).permit(
      :name1,
      :name2,
      :age,
      :gender,
      :blood_type,
      :birthday,
      :prefecture1,
      :prefecture2,
      :address1,
      :address2,
      :phonenumber1,
      :phonenumber2,
      :phonenumber3,
      :phonenumber4,
      :mail,
      :business,
      :insured_number,
      :insured_key,
      :delivery_date,
      :expiration_date,
      :burden,
      :insurer_number,
      :remarks        
    )
  end

end
