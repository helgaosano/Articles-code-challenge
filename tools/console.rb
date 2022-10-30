require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

a1 = Author.new("Author1", ["category3", "category2"])
mag1 = Magazine.new("Mag1", "Category1")
art1 = Article.new(a1,mag1, "title1")
a2 = Author.new("Author2", ["category1", "category4"])
mag2 = Magazine.new("Mag2", "Category2")
mag3 = Magazine.new("Mag3", "Category2")
art2 = Article.new(a1,mag1,"title2")
a1.magazines
mag1.contributors
a1.add_article(mag1, "title3")
a1.add_article(mag1, "title6")
a1.add_article(mag1, "title7")
a1.add_article(mag2, "title4")

### DO NOT REMOVE THIS
binding.pry

0
