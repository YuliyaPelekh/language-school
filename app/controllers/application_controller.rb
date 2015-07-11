require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery with: :exception

  def index
    render text: '', layout: true
  end

  private

  def check_authentification
    head :forbidden unless user_signed_in?
  end
end
