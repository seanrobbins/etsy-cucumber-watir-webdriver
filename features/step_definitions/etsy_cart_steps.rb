Given /^that the cart is empty$/ do
  @cart_contents = CartContentsPage.new(@browser)

  @cart_contents.openCart
  @cart_contents.verifyCartIsEmpty
end

Given /^the cart contains one item$/ do
  Given "I am searching on Etsy.com"
  When "an item is added to the cart"
end

When /^an item is added to the cart$/ do
  @advanced_search = AdvancedSearchPage.new(@browser)
  @search_results = @advanced_search.search "hat"
  
  @cart_contents = @search_results.buyFirstItem
end

Then /^the cart contains that item$/ do
  @cart_contents.hasItem
end

When /^the item is removed$/ do
  @cart_contents.removeItem
end

Then /^the cart will be empty$/ do
  @cart_contents.verifyCartIsEmpty
end