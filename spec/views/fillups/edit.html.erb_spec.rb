require 'spec_helper'

describe "fillups/edit" do
  before(:each) do
    @fillup = assign(:fillup, stub_model(Fillup,
      :odometer => "9.99",
      :price => "9.99",
      :volume => "9.99",
      :missed => false,
      :partial => false
    ))
  end

  it "renders the edit fillup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fillup_path(@fillup), "post" do
      assert_select "input#fillup_odometer[name=?]", "fillup[odometer]"
      assert_select "input#fillup_price[name=?]", "fillup[price]"
      assert_select "input#fillup_volume[name=?]", "fillup[volume]"
      assert_select "input#fillup_missed[name=?]", "fillup[missed]"
      assert_select "input#fillup_partial[name=?]", "fillup[partial]"
    end
  end
end
