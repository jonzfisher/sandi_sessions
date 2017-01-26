# Inheritance Strikes Back

class StormTrooper
  attr_reader :style, :height, :guns

  def initialize(args)
    @style = args[:style]
    @height = args[:height]
    @guns = args[:guns]
    @sights = args[:sights]
    @shield = args[:shield]
    @pistol_type = args[:pistol_type]
  end

  def with_him
    if style == :sniper
      { weapon_capacity: '2',
        grenade_capacity: '3',
        suit_color: 'white'
        guns: guns,
        sights: sights,
        shield: shield }
    else
      { weapon_capacity: '2',
        grenade_capacity: '3',
        suit_color: 'white',
        pistol_type: pistol_type
        guns: guns }
    end
  end

  #...
end

class Sniper < StormTrooper
  attr_reader :sights, :shield

  def initialize(args)
    @sights = args[:sights]
    @shield = args[:shield]
    super(args)
  end

  def with_him
    super.merge({
      sights: sights,
      shield: shield
      })

  end


end

trooper = Sniper.new(
  height: '6ft'
  sights: 'Sniper Sights woo!',
  shield: 'oh yeah we got those!'
   )

trooper.stuff


```
  Notes:
  The problem here is that Bicyle still describes a lot of specific
  information about the trooper you original designed for:
  the regular blaster pistol trooper.
```
