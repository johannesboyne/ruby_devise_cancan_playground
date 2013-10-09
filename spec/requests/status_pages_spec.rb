require 'spec_helper'

describe "StatusPages" do
  before { @status = Status.create(status: true) }

  subject { page }

  before { visit status_index_path }

  it "should have the content 'Page Status'" do
    expect(page).to have_content('Page Status')
  end
end
