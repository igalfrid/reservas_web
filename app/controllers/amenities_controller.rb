class AmenitiesController < ApplicationController
  def new
    @amenity = Amenity.new
  end

  def create
    @amenity = Amenity.new(amenity_params)
    if @amenity.save
      redirect_to @amenity
    else
      render 'new'
    end
  end

  def show
    @amenity = Amenity.find(params[:id])
  end

  def index
    @amenities = Amenity.all
  end

  def edit
    @amenity = Amenity.find(params[:id])
  end

  def update
    @amenity = Amenity.find(params[:id])

    if @amenity.update(amenity_params)
      redirect_to @amenity
    else
      render 'edit'
    end
  end

  def destroy
    @amenity = Amenity.find(params[:id])
    @amenity.destroy

    redirect_to amenities_path
  end

  private
    def amenity_params
      params.require(:amenity).permit(:name, :capacity, :description)
    end
end
