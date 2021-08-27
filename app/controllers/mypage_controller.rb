class MypageController < ApplicationController
    before_action :authenticate_user!
    # before_action :authenticate_api_user!
    def index
        
    end

end