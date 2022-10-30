class Article

    attr_reader :title
    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all       #returns all the Article instances
        @@all
    end

    def author
        @author.name
    end

    def magazine
        @magazine.name
    end
end
