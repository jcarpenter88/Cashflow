require 'spec_helper'

describe "transaction_types/edit.html.erb" do
  before(:each) do
    @transaction_type = assign(:transaction_type, stub_model(TransactionType,
      :name => "MyString"
    ))
  end

  it "renders the edit transaction_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transaction_type_path(@transaction_type), :method => "post" do
      assert_select "input#transaction_type_name", :name => "transaction_type[name]"
    end
  end
end
