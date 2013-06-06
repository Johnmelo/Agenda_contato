class Contato
  attr_accessor :id,:name,:mail,:phone
  @@id=0
  def initialize(name,mail,phone)
    @id = "ID: #{@@id}"
    @name = name
    @mail = mail
    @phone =phone
    @@id  += 1
  end
  def Contato.cont
    return @@id
  end
end
