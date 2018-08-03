class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

get '/food_health' do
  erb:food_health
end
get '/contact' do
  erb:contact
end

get '/porkChops' do
  erb :porkChops
end 

get '/strawberrySpinach' do
  erb :strawberrySpinach
end 

get '/aboutus' do
  erb:aboutus
end

post '/quiz' do
 @name = params[:name]
  @food = params[:food] 
  @q1 = params[:q1].to_i
  @q2 = params[:q2].to_i
  @q3 = params[:q3].to_i
  @q4 = params[:q4].to_i
  @q5 = params[:q5].to_i
  @q6 = params[:q6].to_i
  @q7 = params[:q7].to_i 


  if @q1 + @q2 + @q3 + @q4 + @q5 + @q6 + @q7 < 8 
    @food = "Strawberry Spinich Salad"
    "https://www.allrecipes.com/recipe/14276/strawberry-spinach-salad-i/?internalSource=recipe%20hub&referringId=1058&referringContentType=recipe%20hub&clickId=cardslot%2023"
    erb :strawberrySpinach
  elsif @q1 + @q2 + @q3 + @q4 + @q5 + @q6 + @q7 < 15
    @food = "Watermelon Salad"
    "https://www.allrecipes.com/recipe/111853/refreshing-watermelon-salad/?internalSource=hub%20recipe&referringContentType=search&clickId=cardslot%205"
    erb :watermelon
  elsif @q1 + @q2 + @q3 + @q4 + @q5 + @q6 + @q7 < 22
    @food = "Shrimp Lemon Pepper Linguini"
    "https://www.allrecipes.com/recipe/40154/shrimp-lemon-pepper-linguini/?internalSource=hub%20recipe&referringId=1058&referringContentType=recipe%20hub&clickId=cardslot%206"
    erb :shrimpLemon
  elsif @q1 + @q2 + @q3 + @q4 + @q5 + @q6 + @q7 < 29
    @food = "Guac and Chips"
    "https://www.allrecipes.com/recipe/14231/guacamole/?internalSource=hub%20recipe&referringContentType=search"
    erb :guac
  elsif @q1 + @q2 + @q3 + @q4 + @q5 + @q6 + @q7 < 42
    @food = "Pork Chops With Rasberry Sauce"
   "https://www.allrecipes.com/recipe/53733/pork-chops-with-raspberry-sauce/?internalSource=recipe%20hub&referringId=1058&referringContentType=recipe%20hub&clickId=cardslot%20117"
   erb :porkChops
  else @q1 + @q2 + @q3 + @q4 + @q5 + @q6 + @q7 > 43
    @food = "Here is a website to make foods with the things you already have!"
   "https://www.allrecipes.com/recipes/1058/fruits-and-vegetables/fruits/?page=6"
   erb :quiz
  end
  
end
end