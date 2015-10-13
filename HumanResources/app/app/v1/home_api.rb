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
          :name => user.user_name,
          :phone => user.phone_number,
          :career => user.career
        }
      end
      present(:users => users)
    end

  end
end