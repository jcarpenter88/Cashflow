require 'spec_helper'

describe "transaction_types/show.html.erb" do
  before(:each) do
    @transaction_type = assign(:transaction_type, stub_model(TransactionType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
