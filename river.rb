class River

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def name()
    return @name
  end

  def fish()
    return @fish
  end

  def count_fish()
    return @fish.size()
  end

  def add_fish_to_river(fish)
    @fish << fish
  end

  def deduct_fish_from_river(fish)
    @fish.delete(fish)
  end

  def can_find_fish_by_name(name)
    for fish in @fish
      if fish.name == name
        return fish
      end
    end
    return nil
  end

  def can_add_fish_to_bear(bear, fish)
    find_fish = can_find_fish_by_name(fish)
    deduct_fish_from_river(find_fish)
    bear.add_fish(find_fish)
  end

end
