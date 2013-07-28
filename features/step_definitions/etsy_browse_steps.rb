Given /^I am on Etsy.com$/ do
  @homepage = HomePage.new(@browser)
  @homepage.open
end

When /^I want to browse through a treasury gallery$/ do
  step "I want to browse the treasury"
  step "I choose the first treasury gallery"
end

When /^I want to browse the treasury$/ do
  @treasury_page = @homepage.selectTreasury
end

When /^I choose the first treasury gallery$/ do
  @treasury_page.chooseFirstGallery
end

Then /^results will be displayed in the gallery$/ do
  @treasury_page.verifyTreasuryPageResults
end
