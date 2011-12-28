require 'spec_helper'

describe "toys/edit.html.erb" do
  before(:each) do
    @toy = assign(:toy, stub_model(Toy,
      :sku => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit toy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => toys_path(@toy), :method => "post" do
      assert_select "input#toy_sku", :name => "toy[sku]"
      assert_select "input#toy_description", :name => "toy[description]"
    end
  end
end
