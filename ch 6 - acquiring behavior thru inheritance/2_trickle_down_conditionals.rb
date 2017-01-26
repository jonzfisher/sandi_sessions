# Now we need a different kind of trooper
# Oh we'll just add arguments and if-else conditionals

class StormTrooper
  attr_reader :style, :height, :guns, :pistol_type

  def initialize(args)
    @style = args[:style]
    @height = args[:height]
    @guns = args[:guns]
    @sights = args[:sights]
    @shield = args[:shield]
    @pistol_type = args[:pistol_type]
  end

  def with_him
    if style == :elite_trooper
      { weapon_capacity: '2',
        grenade_capacity: '3',
        suit_color: 'white'
        guns: guns,
        sights: sights,
        shield: shield }
    else
      { weapon_capacity: '2',
        grenade_capacity: '3',
        suit_color: 'white'
        pistol_type: pistol_type
        guns: guns }
    end
  end

  #...
end

trooper = StormTrooper.new(
  style: :elite_trooper
  height: '6ft'
  guns: 'duh'
  sights: 'Sniper Sights woo!',
  shield: 'oh yeah we got those!'
   )

trooper.stuff

```
  Notes:
  classical refers to an object-oriented class, not
  meaning "archaic" ```

```
  Sandi Quote:
  "Inheritance is, at its core, a mechanism for automatic
  messages delegation. It defines a forwarding path for
  not-understood messages" ```
