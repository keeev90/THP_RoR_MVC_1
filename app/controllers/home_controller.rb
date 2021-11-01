class HomeController < ApplicationController
  def index
    puts "#" * 60
    puts "Home controller required to GET index.html.erb from home view"
    puts "#" * 60

    @gossips = Gossip.all #transmettre les données de la table gossips à la view (sous forme d'array de hashs)
  end
end
