require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) { 'Ruby on Rails Tutorial Sample App | ' }

  describe "Home Page" do
  	it "should have 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}Home")
    end
  end

  describe "Help page" do
    it "should have 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title}Help")
    end
  end

  describe "About page" do
    it "should have 'About us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title}About")
    end
  end
end
