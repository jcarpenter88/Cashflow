require 'spec_helper'

describe "transactions/index.html.erb" do
  before(:each) do
    assign(:transactions, [
      stub_model(Transaction,
        :name => "Name"
      ),
      stub_model(Transaction,
        :name => "Name"
      )
    ])
  end

  it "renders a list of transactions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
