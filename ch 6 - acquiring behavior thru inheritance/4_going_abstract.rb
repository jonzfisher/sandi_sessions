


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

  #...
  # def initialize(args)
    # @style = args[:style]
    # @height = args[:height]
    # @guns = args[:guns]
    # @sights = args[:sights]
    # @shield = args[:shield]
  #   @pistol_type = args[:pistol_type]
  # end

  def default_gun_type
    'blaster'
  end

  #...
end

class Sniper < StormTrooper
  #...

  def default_gun_type
    'sniper rifle'
  end
end

blaster_trooper = BlasterTrooper.new(
  height: '6ft',
  pistol_type: 'blaster'
)

sniper_trooper = Sniper.new(
  height: '6ft'
  sights: 'Sniper Sights woo!',
  shield: 'oh yeah we got those!'
   )

blaster_trooper.pistol_type     # => 'blaster'
sniper_trooper.weapons_capacity # => '2'
