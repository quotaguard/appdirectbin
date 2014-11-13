class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def extract_variables
    @accountIdentifier = params[:accountIdentifier] || "dummy-account"
    @accountStatus = params[:accountStatus] || "FREE_TRIAL_EXPIRED"
    @addonBindingId = params[:addonBindingId] || "dummy-addonbinding"
    @addonInstanceId = params[:addonInstanceId] || "dummy-addoninstance"
    @addonOfferingCode = params[:addonOfferingCode] || "type:vendor:plan"
    @editionCode = params[:editionCode] || "BASIC"
    @email = params[:email] || "test-email+creator@appdirect.com"
    @flag = params[:flag] || "STATELESS"
    @noticeType = params[:noticeType] || "DEACTIVATED"
  end
end
