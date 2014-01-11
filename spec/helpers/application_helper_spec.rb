require 'spec_helper'

describe ApplicationHelper do
  
  describe "full title" do
    it "should include the page title" do
      expect(full_title("content")).to match(/content/)
    end

    it "should include the base title" do
      expect(full_title("content")).to match(/^Ruby on Rails Tutorial Sample App/)
    end

    it "should not include a bar for blank title" do
      expect(full_title("")).not_to match(/\|/);
    end
  end
end