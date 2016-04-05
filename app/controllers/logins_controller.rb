class LoginsController < ApplicationController


  def new

  end

  def create

    admin = Admin.find_by(login:params[:login][:login])
    if admin && admin.status==0 && admin.authenticate(params[:login][:password])

      redirect_to action: 'new',id:1

    else
      if admin &&  admin.authenticate(params[:login][:password])
        session[:name]= admin.name
        redirect_to peos_path
      else
        redirect_to action: 'new',id:0
      end
    end
  end








end


