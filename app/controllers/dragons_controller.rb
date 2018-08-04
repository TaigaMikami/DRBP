class DragonsController < ApplicationController
  def index
    @dragons = Dragon.all
  end
end
