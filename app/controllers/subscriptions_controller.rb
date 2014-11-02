class SubscriptionsController < ApplicationController
  before_filter :extract_variables

  def order
  end

  def change
  end

  def cancel
  end

  def notice
  end

  def extract_variables
    @email = params[:email] || "test-email+creator@appdirect.com"
    @editionCode = params[:editionCode] || "BASIC"
    @accountIdentifier = params[:accountIdentifier] || "dummy-account"
    @flag = params[:flag] || "STATELESS"
  end
end
