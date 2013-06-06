require_relative 'Interaction.rb'
require_relative 'Contato.rb'
def menu
  system("clear")
  puts("##############################################################")
  puts("##      _______                                            ###")
  puts("##     /      /  #### #### #### ##   #  ####  ####         ###")
  puts("##    /  :P  /   #### # ## ##   # #  #  #   # ####         ###")
  puts("##   /______/    #  # #### #### #   ##  ####  #  #         ###")
  puts("##                                                         ###")
  puts("##############################################################")
  puts("## 1-SEE CONTACTS  2-ADD CONTACTS  3-EDIT CONTACTS  4-EXIT ###")
  puts("##                                                         ###")
  puts("##############################################################")
  puts " "
  puts "ENTER YOUR CHOICE:"
  x = gets
  x=x.to_i
  if x == 1
    if Contato.cont > 0
      user=Interaction.new
      user.see_contato
    else
     puts "NO CONTACTS."
    end
  end
  if x == 2
    user=Interaction.new
    user.add_contato
  end
  if x == 3
    if Contato.cont > 0
      user=Interaction.new
      user.edit_contato
    else
      puts "NO CONTACTS."
    end
  end
  if x==4
    exit
  end
end

x=0
while(x!=4)
  menu
end