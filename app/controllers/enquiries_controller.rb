class EnquiriesController < ApplicationController
  
  def index
  end

  def new
    @enquiry = Enquiry.new
  end

  def create
    @enquiry = Enquiry.new(params[:enquiry])
    if @enquiry.valid?
      EnquiryMailer.enquiry_email(@enquiry).deliver
      redirect_to root_path, :notice => 'thank you'
    else
      render :new
    end
  end
end
