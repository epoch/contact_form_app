require 'spec_helper'

feature "contact form management" do
  scenario "new valid enquiry" do
    visit '/'
    click_link 'contact us'

    fill_in "Subject", with: "test subject"
    fill_in "Body", with: "test body"

    click_button "Send"

    expect(page).to have_text("thank you")
  end

  scenario "new invalid enquiry" do
    visit '/'
    click_link 'contact us'

    fill_in "Subject", with: ""
    fill_in "Body", with: "test body"

    click_button "Send"

    expect(page).to have_text("Subject can't be blank")
  end

end