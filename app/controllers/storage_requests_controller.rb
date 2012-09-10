class StorageRequestsController < ApplicationController
  def new
    @request = StorageRequest.new
  end

  def create
    @request = StorageRequest.new(params[:storage_request])
    if @request.save
      QuoteMailer.quote_email(@request).deliver
      redirect_to thanks_url
    else
      render "new"
    end
  end

  def thanks
  end 
end
