require 'spec_helper'

describe "fillups/index" do
  before(:each) do
    assign(:fillups, [
      stub_model(Fillup,
        :odometer => 1234.5,
        :price => 2.349,
        :volume => 1.234,
        :missed => true,
        :partial => true
      ),
      stub_model(Fillup,
        :odometer => 1234.6,
        :price => 2.349,
        :volume => 2.345,
        :missed => false,
        :partial => false
      )
    ])
  end

  it "renders a list of fillups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1234.5, :count => 1
    assert_select "tr>td", :text => 1234.6, :count => 1
    assert_select "tr>td", :text => 2.349, :count => 2
    assert_select "tr>td", :text => 1.234, :count => 1
    assert_select "tr>td", :text => 2.345, :count => 1
    assert_select "tr>td", :text => "true", :count => 2
    assert_select "tr>td", :text => "false", :count => 2
  end
end
