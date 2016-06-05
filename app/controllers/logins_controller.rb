class LoginsController < ApplicationController

def index
  session[:name]= nil
  session[:login]=nil
  session[:auth]=nil
  session[:id]=nil
  redirect_to new_login_path
end


  def new
 adm= Admin.all
    if adm.count==0
      Admin.create(name:'管理员',login:'admin',password:'admin',password_confirmation:'admin',status:'1')
    end
  end

  def create

    admin = Admin.find_by(login:params[:login][:login])
    if admin && admin.status==0 && admin.authenticate(params[:login][:password])

      redirect_to action: 'new',id:1

    else
      if admin &&  admin.authenticate(params[:login][:password])
        session[:name]= admin.name
        session[:login]=admin.login
        session[:auth]=admin.authority
        session[:id]=admin.id
        redirect_to peos_path
      else
        redirect_to action: 'new',id:0
      end
    end
  end








end


