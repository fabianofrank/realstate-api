# frozen_string_literal: true

require 'application_system_test_case'

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test 'visiting the index' do
    visit properties_url
    assert_selector 'h1', text: 'Properties'
  end

  test 'should create property' do
    visit properties_url
    click_on 'New property'

    fill_in 'Bath', with: @property.bath
    fill_in 'Bed', with: @property.bed
    fill_in 'City', with: @property.city
    fill_in 'Description', with: @property.description
    fill_in 'District', with: @property.district
    fill_in 'Parking', with: @property.parking
    fill_in 'Size', with: @property.size
    fill_in 'Street', with: @property.street
    click_on 'Create Property'

    assert_text 'Property was successfully created'
    click_on 'Back'
  end

  test 'should update Property' do
    visit property_url(@property)
    click_on 'Edit this property', match: :first

    fill_in 'Bath', with: @property.bath
    fill_in 'Bed', with: @property.bed
    fill_in 'City', with: @property.city
    fill_in 'Description', with: @property.description
    fill_in 'District', with: @property.district
    fill_in 'Parking', with: @property.parking
    fill_in 'Size', with: @property.size
    fill_in 'Street', with: @property.street
    click_on 'Update Property'

    assert_text 'Property was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Property' do
    visit property_url(@property)
    click_on 'Destroy this property', match: :first

    assert_text 'Property was successfully destroyed'
  end
end
