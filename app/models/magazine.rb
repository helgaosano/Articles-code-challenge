class Magazine
    
    attr_accessor :name, :category
    @@all = []    #class variable "all" returning an array of Magazine instances

    def initialize(name, category)
      @name = name
      @category = category
      @@all << self     #adds a new object that has been created to the class variable "all"
    end

    def self.all  #returns all the magazine instances
      @@all
    end

    def category
      @category
    end

    #helper method
    def articles_magazines
      Article.all.filter{|article|article.magazine==@name}
    end
    
    #helper method
    def authors_of_magazines
      articles_magazines.map{|article|article.author}
    end

    def contributors
      authors_of_magazines.uniq
    end

    def self.find_by_name(name)
      Magazine.all.find{|magazine|magazine.name==name}
    end

    def article_titles
      articles_magazines.map{|article|article.title}
    end

    def contributing_authors
      main_authors=[]
      authors_of_magazines.tally.each {|key, value|
      value>2&&(main_authors<<key)}
      main_authors
    end

end
