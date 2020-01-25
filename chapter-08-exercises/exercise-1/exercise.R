# Exercise 1: creating and accessing lists

# Create a vector `my_breakfast` of everything you ate for breakfast

my_breakfast<- c("Vitamins","Brussel Sprouts","Tuna Melt","Orange Juice","Brownie")
# Create a vector `my_lunch` of everything you ate (or will eat) for lunch

my_lunch<- c("Salad","chicken tenders","French Fries")
# Create a list `meals` that has contains your breakfast and lunch

meals<- list(
  Breakfast = my_breakfast,
  Lunch = my_lunch
)
# Add a "dinner" element to your `meals` list that has what you plan to eat 
# for dinner
meals$dinner<- c("Salad","Rice","Coffee")

# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner<- meals$dinner
print(dinner)
# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason beyond practice)
meals[["Lunch"]]
meals[[5]] <- meals[["Lunch"]]
print(meals)
# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early_meals`

early_meals<- meals[c("Breakfast", "Lunch")]
print(early_meals)

### Challenge ###

# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function to apply the `length()` function to each item
num_of_breakfast <- length(meals$Breakfast)
print(num_of_breakfast)
length(meals$dinner)
length(meals$Lunch)
num_items<- lapply(meals, length)
print(num_items)
# Write a function `add_pizza` that adds pizza to a given meal vector, and
# returns the pizza-fied vector

add_pizza<- function(meal_vector){
  #add pizza to that vector
  
  new_vector<-c(meal_vector, "pizza")
  #return new vector
  return(new_vector)
}

add_pizza(c(nachos))
# Create a vector `better_meals` that is all your meals, but with pizza!
better_meals<- lapply(meals, add_pizza)
print(better_meals)
}
#thank god. I just got stuck in a function.