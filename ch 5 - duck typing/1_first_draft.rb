#Here you started with good intentions. Look, you don't
#care at all what kind of thing wants to teach your padawans,
#you just care that it can do teach_padawans


class JediSchool
  attr_reader :padawans, :parents, :grades

  #this 'mechanic' argument could be of any class
  def teach(jedi_master)
    jedi_master.teach_padawans(padawan)
  end

  #...
end


class JediMaster
  def teach_padawans(padawans)
    padawans.each {|padawan| teach_padawan(padawan)}
  end

  def teach_padawan(padawan)
    #...
  end
end
