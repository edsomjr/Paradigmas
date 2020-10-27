room(kitchen) .
room(office) .
room(hall) .
room('dining room') .
room(cellar) .

location(desk, office) .
location(apple, kitchen) .
location(flashlight, desk) .
location('washing machine', cellar) .
location(nani, 'washing machine') .
location(broccoli, kitchen) .
location(crackers, kitchen) .
location(computer, office) .

door(office, hall) .
door(kitchen, office) .
door(hall, 'dining room') .
door(kitchen, cellar) .
door('dining room', kitchen) .

edible(apple) .
edible(crackers) .
tastes_yucky(broccoli) .

turned_off(flashlight) .
here(kitchen) .
