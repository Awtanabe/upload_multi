class PrototypesController < ApplicationController

  def new
   @prototype = Prototype.new
    3.times { @prototype.thumbnails.build }

    @prototypes = Prototype.all
  end

  def create
    binding.pry
    Prototype.create(create_params)
    redirect_to "/prototypes/new"
  end

  private
  def create_params
  params.require(:prototype).permit(thumbnails_attributes: [:image])
  end

end
