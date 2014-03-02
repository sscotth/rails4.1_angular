require 'spec_helper'

describe "fillups/show" do
  before(:each) do
    @fillup = assign(:fillup, stub_model(Fillup,
      :odometer => "9.99",
      :price => "9.99",
      :volume => "9.99",
      :missed => false,
      :partial => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
