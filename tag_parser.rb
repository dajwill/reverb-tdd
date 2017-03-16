class TagParser
  def initialize tags
    @tags = tags.split(',')
  end

  def parse type
    @tags.each do |tag|
      return tag.split(':')[1].strip if tag.include? "#{type}:"
    end
  end

  def make
    parse "make"
  end

  def model
    parse "model"
  end

  def condition
    parse "condition"
  end
end
