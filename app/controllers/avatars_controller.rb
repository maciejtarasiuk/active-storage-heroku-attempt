class AvatarsController < ApplicationController
  def update
    Current.user.avatar.attach(params.require(:avatar))
    redirect_to Current.user
  end
end
