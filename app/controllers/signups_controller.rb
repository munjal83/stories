class SignupsController < ApplicationController
    def new
    end
    
    def create
        @signup = Signup.create(params[signup_params])
        
        if @signup.save
            redirect_to pages_thanks_path
        else
            render action: :new
        end   
    end
    
    private
    def signup_params
        params.require(:signup).permit(:firstname, :email)
    end
        
end
