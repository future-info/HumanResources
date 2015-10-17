module V1
  class HomeApi < Grape::API
    version "v1"
    
    get "/test" do
      present({success: 'yes'})
    end

    get "get_careers" do
      present({:result => Setting.all_careers})
    end

    get "users_list" do 
      users = []
      @users = User.all
      @users.each do |user|
        users << {
          :id => user.id,
          :name => user.user_name || "",
          :phone => user.phone_number || "",
          :career => user.career,
          :career_name => user.career_name,
          :career_years => user.career_years,
          :email => user.email
        }
      end
      present(:users => users)
    end

    get "/users/:id" do
      @user = User.find(params[:id])
      result = {}
      if @user
        result = {
          :id => @user.id,
          :name => @user.user_name || "",
          :phone => @user.phone_number || "",
          :career => @user.career,
          :career_name => @user.career_name,
          :career_years => @user.career_years,
          :email => @user.email
        }
      end
      present(:user => result)
    end

  end
end