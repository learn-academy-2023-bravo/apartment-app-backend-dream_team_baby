require 'rails_helper'



RSpec.describe "Apartments", type: :request do
  user1 = User.where(email: "testing1@example.com").first_or_create(password: "password", password_confirmation: "password")
  describe "GET /index" do
    # user1 = User.where(email: "testing1@example.com").first_or_create(password: "password", password_confirmation: "password")

   it "shows all of the apartments" do
    Apartment.create( 
    street: '45 Rimrock',
    unit: '90A',
    city: 'Dallas',
    state: 'TX',
    square_footage: 1000,
    price: '1800',
    bedrooms: 2,
    bathrooms: 2,
    pets: 'yes!',
    image: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80',
    user_id:user1.id
    )


    get "/apartments"
    apartment = JSON.parse(response.body)
    expect(response).to have_http_status(200)
    expect(apartment.length).to eq 1
  end
end
describe "POST /create" do
  

  it "creates an apartment listing" do
   apartment_params ={
    apartment:{
   street: '45 Rimrock',
   unit: '90A',
   city: 'Dallas',
   state: 'TX',
   square_footage: 1000,
   price: '1800',
   bedrooms: 2,
   bathrooms: 2,
   pets: 'yes!',
   image: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80',
   user_id:user1.id
   }}

   post "/apartments", params: apartment_params
   expect(response).to have_http_status(200)
   apartment = Apartment.first
   expect(apartment.street).to eq '45 Rimrock'
   expect(apartment.bedrooms).to eq 2
   expect(apartment.square_footage).to eq 1000
   expect(apartment.city).to eq 'Dallas'
  end


   
 end
end
