require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the h1 'Google in RoR'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Google in RoR')
    end
  end

  describe "About page" do
    it "should have the h1 'About Google'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Google')
    end

    it "should have the title 'About Google'" do
      visit '/static_pages/about'
      page.should have_selector('title',
          :text => ' - About Google')
    end
  end
end
