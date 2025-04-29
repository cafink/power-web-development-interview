require 'rails_helper'

RSpec.describe "friends/index", type: :view do
  before(:each) do
    assign(:friends, [
      Friend.create!(
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        phone: "Phone",
        twitter: "Twitter"
      ),
      Friend.create!(
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        phone: "Phone",
        twitter: "Twitter"
      )
    ])
  end

  it "renders a list of friends" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Twitter".to_s), count: 2
  end
end
