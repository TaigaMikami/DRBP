class DragonsController < ApplicationController
  def index
    @dragons = Dragon.all.reverse
  end
end
