class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
      # Registra o usuário e redirecione para a página de exibição do usuário.
    else
      flash.now[:danger] = 'Combinação de email/senha inválido' # Não é o certo
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
