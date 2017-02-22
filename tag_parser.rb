class TagParser
  def initialize tags
    @tags = tags.split(',')
  end

  def make
    @tags.each do |tag|
      return tag.split(':')[1].strip if tag.include? 'make:'
    end
  end

  def model
    @tags.each do |tag|
      return tag.split(':')[1].strip if tag.include? 'model:'
    end
  end

  def condition
    @tags.each do |tag|
      return tag.split(':')[1].strip if tag.include? 'condition:'
    end
  end
end
