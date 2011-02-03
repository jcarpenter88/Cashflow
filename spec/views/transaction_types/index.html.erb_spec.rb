require 'spec_helper'

describe "transaction_types/index.html.erb" do
  before(:each) do
    assign(:transaction_types, [
      stub_model(TransactionType,
        :name => "Name"
      ),
      stub_model(TransactionType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of transaction_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
