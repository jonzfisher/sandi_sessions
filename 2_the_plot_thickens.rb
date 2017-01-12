# But then the plot thickens. Now there are multiple things
# doing different methods, so you just decide to have a list
# of conditionals accepting different types of objects, and
# then acting based off the the class.

# Sort of pretty, but not very reuseable. This means you have
# to modify the train method and the JediSchool class
# every time you want to add a method from a different
# object. :-/

class JediSchool
  attr_reader :padawans, :parents, :grades

  #this 'mechanic' argument could be of any class
  def teach(trainers)
    trainers.each {|trainer|
      case trainers
      when Yoda
        trainer.meditate(padawans)
      when MaceWindu
        trainer.be_a_badass(padawans)
      when Anakin
        trainer.be_a_murder(padawans)
        trainer.join_sidious(sith_lord)
      end
    }
  end

  #...
end

class Yoda
  def meditate(padawans)
    #...
  end
end

class MaceWindu
  def be_a_badass(padawans)
    #...
  end
end

class Anakin
  def be_a_murder(padawans)
    #...
  end

  def join_sidious(sith_lord)
    #...
  end
end
