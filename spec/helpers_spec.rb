require 'spec_helper'
require 'ostruct'

describe 'Helpers' do
  subject do
    Class.new {include AsplesSinatra::Helpers}
  end
  
  describe "#input" do
    it "returns html for a bootstrap formatted field" do
      @user = OpenStruct.new
      @user.errors = {name: ["An error has occured"]}
      @user.name = "John Doe"
      
      raw_html = subject.new.input :name, object: @user, label: 'Full name', placeholder: 'Enter your full name'
      
      expect(raw_html).to include ("<div class='form-group has-error'>")
      expect(raw_html).to include ("<input class='form-control' name='name' placeholder='Enter your full name' type='text' value='John Doe'>")
      expect(raw_html).to include ("<span class='help-block'>")
      expect(raw_html).to include ("An error has occured")
    end
  end
end