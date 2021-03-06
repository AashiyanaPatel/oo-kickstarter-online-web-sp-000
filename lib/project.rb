class Project
  
  attr_reader :title
  @@all = []
  
  def initialize(title)
    @title = title
    @@all = self
  end
  
  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end
  
  def self.all
    @@all
  end
  
  def backers
    backers_all.map do |b|
      b.backer
       end
     end
    
end
