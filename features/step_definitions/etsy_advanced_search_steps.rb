Given /^I am searching on Etsy.com$/ do
  @advanced_search = AdvancedSearchPage.new(@browser)
  @advanced_search.open
end

When /^I specify the (.*) sub category$/ do |sub_cat|
  @advanced_search.subCategory sub_cat
end

When /^I search for (.*)$/ do |thing|
  @advanced_search.search thing
  @search_results = SearchResultsPage.new(@browser)
end

Then /^there are search results for (.*)$/ do |search_term|
  @search_results.verifySearchResultsPresent search_term
end