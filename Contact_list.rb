$list=[]
class Contact_list
  def create(lista)
    $list = [lista]
  end
  def edit_list(id_c,id_a,change)
    if id_a == 1
      $list[id_c][id_a] = "NOME:#{change}"
    end
    if id_a == 2
      $list[id_c][id_a] = "EMAIL:#{change}"
    end
    if id_a == 3
      $list[id_c][id_a] = "PHONE:#{change}"
    end
  end
end