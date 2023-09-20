class ChatgptController < ApplicationController
  def chat_request
    render :json => data
  end

  def data
    {:name => "any name"}
  end
end
