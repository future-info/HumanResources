# -*- encoding : utf-8 -*-
module V1
  class HomeApi < Grape::API
    version "v1"
    
    get "/test" do
      present({success: 'yes'})
    end
  end
end