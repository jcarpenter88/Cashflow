require 'spec_helper'

describe "transaction_types/new.html.erb" do
  before(:each) do
    assign(:transaction_type, stub_model(TransactionType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new transaction_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transaction_types_path, :method => "post" do
      assert_select "input#transaction_type_name", :name => "transaction_type[name]"
    end
  end
end
