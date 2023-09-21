class ChatgptController < ApplicationController
  def chat_request
    render :json => data
  end

  def data
    # TODO this return the factory bot data
    {:name => "any name"}
  end
end
