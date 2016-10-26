require 'rails_helper'

RSpec.describe "home/index", :type => :view do
  it "render select" do
    assign(:makes, Make.all)
    render
    expect(rendered).to match /webmotors/
  end
end
