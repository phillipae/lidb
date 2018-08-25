require 'rails_helper'

RSpec.describe "phones/index", type: :view do
  before(:each) do
    assign(:phones, [
      Phone.create!(
        :name => "Name"
      ),
      Phone.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of phones" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
