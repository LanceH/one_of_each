# one_of_each
From an array of arrays, enumerates all the arrays made from choosing one item from each of the arrays.  The example used is choosing options for a burrito (one choice for meat, tortilla, beans, etc. will make a burrito).

# Explanation
Making a burrito was used as an example.  There are several choices a person ordering has to make: which tortilla, meat, and bean to choose.  These are represented as an array of arrays here.  We want to make a burrito with one element from each of those subarrays.  It will enumerate through all possibilities.

Given a known number of ingredient types, it is simple enough to nest loops as is done in original_burrito.rb.  However, this requires coding each time and makes for a lot of code.

```ruby
require "./one_of_each.rb"

meats = ['salami', 'bologna']
breads = ['white', 'wheat']
ingredients = [meats, breads]

ingredients.one_of_each(ingredients, []) do |i|
  puts i.join " "
end
```
This will print:
```
white salami
white bolagna
wheat salami
wheat bologna
```
