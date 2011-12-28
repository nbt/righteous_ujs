require 'spec_helper'

describe "toys/new.html.erb" do
  before(:each) do
    assign(:toy, stub_model(Toy,
      :sku => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new toy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => toys_path, :method => "post" do
      assert_select "input#toy_sku", :name => "toy[sku]"
      assert_select "input#toy_description", :name => "toy[description]"
    end
  end
end
