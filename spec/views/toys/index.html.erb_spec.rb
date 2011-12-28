require 'spec_helper'

describe "toys/index.html.erb" do
  before(:each) do
    assign(:toys, [
      stub_model(Toy,
        :sku => "Sku",
        :description => "Description"
      ),
      stub_model(Toy,
        :sku => "Sku",
        :description => "Description"
      )
    ])
  end

  it "renders a list of toys" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sku".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
