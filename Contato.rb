class Contato
  attr_accessor :id,:name,:mail,:phone
  
  def initialize(id,name,mail,phone)
    @id = id
    @name = name
    @mail = mail
    @phone =phone
  end
end
