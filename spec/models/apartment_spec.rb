require 'rails_helper'

RSpec.describe Apartment, type: :model do
  let(:user) { User.create(email:"testing@example.com", password:"password", password_confirmation:"password")}
#  it "should have a valid street" do
#   apartment=user.apartments.create(
   
#     unit: '90A',
#     city: 'Dallas',
#     state: 'TX',
#     square_footage: 1000,
#     price: '1800',
#     bedrooms: 2,
#     bathrooms: 2,
#     pets: 'yes!',
#     image: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'
#   )
#   expect(apartment.errors[:street]).to include "can't be blank"
#  end

 it "should have a valid unit" do
  apartment=user.apartments.create(
   
    street: '123 fake st',
    city: 'Dallas',
    state: 'TX',
    square_footage: 1000,
    price: '1800',
    bedrooms: 2,
    bathrooms: 2,
    pets: 'yes!',
    image: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'
  )
  expect(apartment.errors[:unit]).to_not be_empty
 end
 it "should have a valid city" do
  apartment=user.apartments.create(
   
    unit: '90A',
    street: 'Dallas',
    state: 'TX',
    square_footage: 1000,
    price: '1800',
    bedrooms: 2,
    bathrooms: 2,
    pets: 'yes!',
    image: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'
  )
  expect(apartment.errors[:city]).to include "can't be blank"
 end
 it "should have a valid state" do
  apartment=user.apartments.create(
   
    unit: '90A',
    city: 'Dallas',
    street: 'TX',
    square_footage: 1000,
    price: '1800',
    bedrooms: 2,
    bathrooms: 2,
    pets: 'yes!',
    image: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'
  )
  expect(apartment.errors[:state]).to include "can't be blank"
 end
 it "should have a valid square footage" do
  apartment=user.apartments.create(
   
    unit: '90A',
    city: 'Dallas',
    state: 'TX',
    street: 'whatever',
    price: '1800',
    bedrooms: 2,
    bathrooms: 2,
    pets: 'yes!',
    image: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'
  )
  expect(apartment.errors[:square_footage]).to include "can't be blank"
 end
 it "should have a valid price" do
  apartment=user.apartments.create(
   
    unit: '90A',
    city: 'Dallas',
    state: 'TX',
    square_footage: 1000,
    street: '1800',
    bedrooms: 2,
    bathrooms: 2,
    pets: 'yes!',
    image: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'
  )
  expect(apartment.errors[:price]).to include "can't be blank"
 end
 it "should have a valid bedrooms" do
  apartment=user.apartments.create(
   
    unit: '90A',
    city: 'Dallas',
    state: 'TX',
    square_footage: 1000,
    price: '1800',
    street: "22",
    bathrooms: 2,
    pets: 'yes!',
    image: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'
  )
  expect(apartment.errors[:bedrooms]).to include "can't be blank"
 end
 it "should have a valid bathrooms" do
  apartment=user.apartments.create(
   
    unit: '90A',
    city: 'Dallas',
    state: 'TX',
    square_footage: 1000,
    price: '1800',
    bedrooms: 2,
    street: "wekjrh",
    pets: 'yes!',
    image: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'
  )
  expect(apartment.errors[:bathrooms]).to include "can't be blank"
 end
 it "should have a valid pets" do
  apartment=user.apartments.create(
   
    unit: '90A',
    city: 'Dallas',
    state: 'TX',
    square_footage: 1000,
    price: '1800',
    bedrooms: 2,
    bathrooms: 2,
    street: 'yes!',
    image: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'
  )
  expect(apartment.errors[:pets]).to include "can't be blank"
 end
 it "should have a valid image" do
  apartment=user.apartments.create(
   
    unit: '90A',
    city: 'Dallas',
    state: 'TX',
    square_footage: 1000,
    price: '1800',
    bedrooms: 2,
    bathrooms: 2,
    pets: 'yes!',
    street: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'
  )
  expect(apartment.errors[:image]).to include "can't be blank"
 end


end
