





class StormTrooper
  attr_reader :height, :guns, :primary_gun_type

  def initialize(args={})
    @height = args[:size]
    @guns = args[:guns] || false
    @primary_gun_type = args[:primary_gun_type] || default_gun_type
  end

  def default_gun_type
    raise NotImplementedError,
        "This #{self.class} cannot respond to:"
  end
end

class BlasterTrooper < StormTrooper
  attr_reader :style, :height, :guns

  def initialize(args)
    @pistol_type = args(:pistol_type)
    super(args)
  end

  #...
  def with_him
    super.merge({ pistol_type: pistol_flag })
  end

  def default_gun_type
    'blaster'
  end

  #...
end

class Sniper < StormTrooper
  #...
  def initialize(args)
    @sights = args[:sights]
    @shield = args[:shield]
    super(args)
  end

  def with_him
    super.merge({ sights: sights, shield: shield })
  end

  def default_gun_type
    'sniper rifle'
  end
end
