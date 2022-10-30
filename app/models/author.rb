class Author

  attr_reader :name
  attr_writer :category
  
  def initialize(name, category=[])
    @name = name
    @category = category
  end

  def articles
   #filter from Article, the articles that have article.author == author.name
  # returns Article instances
    Article.all.filter {|article| article.author==@name}
  end

  # returns Magazine instances form articles, associated with a specific author 
  def magazines
    articles.map{|article|article.magazine}.uniq
  end

  #creates a new Article instance associating it with the author and that magazine
  def add_article(magazine, title)
    Article.new(self,magazine,title)
  end

  # Returns unique array of categories of magazines
  def topic_areas
    @category.uniq
  end
end

