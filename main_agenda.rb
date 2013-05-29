require_relative 'Contato.rb'
class Main_agenda
  def initialize
    puts("##############################################################")
    puts("##      _______                                            ###")
    puts("##     /      /  #### #### #### ##   #  ####  ####         ###")
    puts("##    /  :P  /   #### # ## ##   # #  #  #   # ####         ###")
    puts("##   /______/    #  # #### #### #   ##  ####  #  #         ###")
    puts("##                                                         ###")
    puts("##############################################################")
    puts("## 1-VER CONTATOS  2-ADICIONAR CONTATOS  3-EDITAR CONTATOS ###")
    puts("##                                                4-SAIR   ###")
    puts("##############################################################")
    x = gets
    x=x.to_i
    if x == 1
      puts("aguarde1 em processo...")
    end
    if x == 2
      user=Contato.new
      user.add_contato
    end
    if x == 3
      user=Contato.new
      user.edit_contato
    end
    if x==4
      exit
    end
  end
end

Main_agenda.new