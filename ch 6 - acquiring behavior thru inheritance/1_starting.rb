# Here again you start with great intentions.

class StormTrooper
  attr_reader :height, :guns, :pistol_type

  def initialize(args)
    @height = args[:height]
    @guns = args[:guns]
    @pistol_type = args[:pistol_type]
  end

  def stuff
    { weapon_capacity: '2',
      grenade_capacity: '3',
      suit_color: 'white'
      pistol_type: pistol_type}
  end

  #...
end

trooper = StormTrooper.new(
    height: '6ft'
    guns: 'duh',
    pistol_type: 'blaster' )

trooper.height # => '6ft'
trooper.guns   # => 'duh'


```
  Notes:
  classical refers to an object-oriented class, not
  meaning "archaic" ```

```
  Sandi Quote:
  "Inheritance is, at its core, a mechanism for automatic
  messages delegation. It defines a forwarding path for
  not-understood messages" ```
