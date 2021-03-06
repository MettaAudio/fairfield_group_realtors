class PagesController < ApplicationController
  def home
  end

  def listing
  end

  def bpo
  end

  def talk
    @message = Message.new
  end

  def create_message
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :talk
    end
  end

  def about
  end
end
