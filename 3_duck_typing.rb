class JediSchool
  attr_reader :padawans, :parents, :grades, :trainers, :sith_lord
  attr_reader :graduates
  attr_reader :balls_shooting_tiny_lasers
  attr_reader :lightsabers
  #this 'mechanic' argument could be of any class
  def train(trainers)
    trainers.each { teach(jedi_school) }
  end

  #...
end

class Yoda
  def teach(jedi_school)
    padawans = jedi_school.padawans
    meditate(padawans)
  end

  def meditate(padawans)
    #...
  end
end

class MaceWindu
  def teach(jedi_school)
    padawans = jedi_school.padawans
    little_badasses = be_a_badass(padawans)
  end

  def be_a_badass(padawans)
    #...
  end

  private

  def force_lightning
    #...
  end

end

class Anakin
  def teach(jedi_school)
    sith_lord = jedi_school.sith_lord
    be_a_murderer(padawans)
    join_sidious(sith_lord)
  end

  def be_a_murder(padawans)
    #...
  end

  def join_sidious(sith_lord)
    #...
  end
end
