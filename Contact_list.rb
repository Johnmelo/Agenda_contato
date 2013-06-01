class Contact_list
  @@list=[]
  def initialize(id,name,mail,phone)
    @@list << [id,name,mail,phone]
  end
  def Contact_list.see
    return @@list
  end
  def Contact_list.edit(id_c,id_a,change)
    if id_a == 1
      @@list[id_c][id_a] = "NOME:#{change}"
    end
    if id_a == 2
      @@list[id_c][id_a] = "EMAIL:#{change}"
    end
    if id_a == 3
      @@list[id_c][id_a] = "PHONE:#{change}"
    end
  end
end