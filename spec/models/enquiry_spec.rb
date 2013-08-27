require 'spec_helper'

describe Enquiry do

  context "with empty subject" do
    let(:enquiry) { Enquiry.new(subject: '', body: 'some text') }    

    it "is invalid" do
      enquiry.should_not be_valid
    end
    
  end

end