class Bear

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def name()
    return @name
  end

  def type()
    return @type
  end

  def stomach()
    @stomach
  end

  def count_stomach()
    return @stomach.size
  end

  def add_fish(fish)
    @stomach << fish
  end


end
