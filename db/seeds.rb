Book.delete_all
Recipe.delete_all
Ingredient.delete_all

b1 = Book.create(:title => 'Mastering the Art of French Cooking', :cuisine => 'French', :chef => 'Julia Child', :image => 'http://ab.wsimgs.com/wsimgs/ab/images/dp/wcm/201305/0002/img88b.jpg')

r1 = Recipe.create(:name => 'Coq au Vin', :course => 'main', :cooktime => 'one hour', :servingsize => '4', :instructions => '', :image => 'http://static.thepioneerwoman.com/cooking/files/2009/08/coq.jpg', :book_id => '')
r2 = Recipe.create(:name => 'Fried Chicken', :course => 'main', :cooktime => '45 minutes', :servingsize => '6', :instructions => '', :image => 'http://www.bonappetit.com/images/magazine/2012/02/skillet-fried-chicken-625.jpg', :book_id => '')
r3 = Recipe.create(:name => 'Buttermilk Waffles', :course => 'breakfast', :cooktime => '30 minutes', :servingsize => '6', :instructions => '', :image => 'http://www.vanielje.com/blog/wp-content/uploads/2009/03/buttermilk-waffles.jpg', :book_id => '')

i1 = Ingredient.create(:name => 'chicken', :measurement =>'5 pounds', :cost=> '10', :image => 'http://2.bp.blogspot.com/-umxPVI8NnrI/TyAbmzXIAdI/AAAAAAAACTc/VkPF6s_gbq4/s1600/Chicken.jpg')
i2 = Ingredient.create(:name => 'flour', :measurement =>'3 cups', :cost=> '4', :image => 'http://www.kingarthurflour.com/item-img/3005_07_13_2012__15_07_56_456')
i3 = Ingredient.create(:name => 'eggs', :measurement =>'3', :cost=> '5', :image => 'http://images.elephantjournal.com/wp-content/uploads/2010/04/eggs1.jpg')
i4 = Ingredient.create(:name => 'butter', :measurement =>'4 Tbsp', :cost=> '3', :image => 'http://thehappyscientist.com/files/EOWpics/butter/butter1.jpg')
i5 = Ingredient.create(:name => 'salt', :measurement =>'1 tsp', :cost=> '1', :image => 'http://www.mortonsalt.com/content/images/product-images/food-salts/morton-coarse-kosher-salt-one-pound-box.png?v=1.1')
i6 = Ingredient.create(:name => 'cornstarch', :measurement =>'1 tsp', :cost=> '1.5', :image => 'http://bakingbites.com/wp-content/uploads/2011/02/cornstarchbox.jpg')

b1.recipes = [r1, r2, r3]

r1.ingredients = [i1, i2, i4]
r2.ingredients = [i1, i2, i3]
r3.ingredients = [i2, i3, i4, i5, i6]