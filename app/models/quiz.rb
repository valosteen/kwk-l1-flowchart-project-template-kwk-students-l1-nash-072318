class Food

attr_accessor :name, :food

@allfood = []

def initialize(name, q1, q2, q3, q4, q5, q6, q7)
  @name = name
  @food = food 
  @q1 = q1
  @q2 = q2
  @q3 = q3
  @q4 = q4
  @q5 = q5 
  @q6 = q6
  @q7 = q7 

end

def results
  if @q1 + @q2 + @q3 + @q4 + @q5 + @q6 + @q7 < 9 
    @food = "Strawberry Spinich Salad"
    #https://www.allrecipes.com/recipe/14276/strawberry-spinach-salad-i/?internalSource=recipe%20hub&referringId=1058&referringContentType=recipe%20hub&clickId=cardslot%2023
  elsif @q1 + @q2 + @q3 + @q4 + @q5 + @q6 + @q7 < 15
    @food = "Watermelon Salad"
    #https://www.allrecipes.com/recipe/111853/refreshing-watermelon-salad/?internalSource=hub%20recipe&referringContentType=search&clickId=cardslot%205
  elsif @q1 + @q2 + @q3 + @q4 + @q5 + @q6 + @q7 < 22
    @food = "Shrimp Lemon Pepper Linguini"
    #https://www.allrecipes.com/recipe/40154/shrimp-lemon-pepper-linguini/?internalSource=hub%20recipe&referringId=1058&referringContentType=recipe%20hub&clickId=cardslot%206
  elsif @q1 + @q2 + @q3 + @q4 + @q5 + @q6 + @q7 < 29
    @food = "guac and chips"
    #https://www.allrecipes.com/recipe/14231/guacamole/?internalSource=hub%20recipe&referringContentType=search
  elsif @q1 + @q2 + @q3 + @q4 + @q5 + @q6 + @q7 < 42
    @food = "Pork chops with rasberry sauce"
   # https://www.allrecipes.com/recipe/53733/pork-chops-with-raspberry-sauce/?internalSource=recipe%20hub&referringId=1058&referringContentType=recipe%20hub&clickId=cardslot%20117
  else @q1 + @q2 + @q3 + @q4 + @q5 + @q6 + @q7 < 43
    @food = "Here is a website to make foods with the things you already have!"
   # https://www.allrecipes.com/recipes/1058/fruits-and-vegetables/fruits/?page=6
   
  
  end
  @food
end  

end
