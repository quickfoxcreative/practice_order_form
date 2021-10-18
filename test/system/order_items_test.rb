require "application_system_test_case"

class OrderItemsTest < ApplicationSystemTestCase
  setup do
    @order_item = order_items(:one)
  end

  test "visiting the index" do
    visit order_items_url
    assert_selector "h1", text: "Order Items"
  end

  test "creating a Order item" do
    visit order_items_url
    click_on "New Order Item"

    fill_in "Price", with: @order_item.price
    fill_in "Product name", with: @order_item.product_name
    fill_in "Quantity", with: @order_item.quantity
    fill_in "Unit", with: @order_item.unit
    click_on "Create Order item"

    assert_text "Order item was successfully created"
    click_on "Back"
  end

  test "updating a Order item" do
    visit order_items_url
    click_on "Edit", match: :first

    fill_in "Price", with: @order_item.price
    fill_in "Product name", with: @order_item.product_name
    fill_in "Quantity", with: @order_item.quantity
    fill_in "Unit", with: @order_item.unit
    click_on "Update Order item"

    assert_text "Order item was successfully updated"
    click_on "Back"
  end

  test "destroying a Order item" do
    visit order_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order item was successfully destroyed"
  end
end
