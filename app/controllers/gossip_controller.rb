class GossipController < ApplicationController
  def show
    puts "#" * 60
    puts "Gossip controller required to GET show.html.erb from gossip view, with dynamic URL variable"
    puts  @gossip_id = params[:gossip_id] #récupérer la valeur contenue dans l'URL - à l'endroit où on a initialisé la variable dans un GET (i.e fichier routes/rb >>> gossip/:gossip_id) - et stockée dans un hash temporaire "params" 
    puts "#" * 60

    @gossip = Gossip.find(@gossip_id) #pour cibler le gossip concerné dans la base de donnée 
  end
end
