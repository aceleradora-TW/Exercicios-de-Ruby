class GameController < ApplicationController
  def index
    @game_area_id = "tabuleiro"

    #<div><%= tag "input", { "type" => "button", "value" => @casa1, "onclick" => "casaClick('casa1')", "id" => @casa1 } %></div>

    @casa_hash = {}
    for i in 1..9
      @casa_hash[i] = { "type" => "button",
                        "value" => " ",
                        "onclick" => "casaClick(" + i.to_s + ")",
                        "id" => "casa"
                      }
    end

  end
end
