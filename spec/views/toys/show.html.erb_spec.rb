require 'spec_helper'

describe "toys/show.html.erb" do
  before(:each) do
    @toy = assign(:toy, stub_model(Toy,
      :sku => "Sku",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sku/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
