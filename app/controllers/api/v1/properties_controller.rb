# frozen_string_literal: true

class Api::V1::PropertiesController < ApplicationController
  def get_image(images); end

  def index
    @properties = Property.all
    properties_render = @properties.map do |property|
      if property.images.attached?
        image_urls = property.images.map do |image|
          image = url_for(image)
        end
        property.as_json.merge(images: image_urls)
      else
        render json: property
      end
    end
    render json: properties_render
  end

  def show; end

  def new
    @property = Property.new
  end

  def edit; end

  def create
    @property = Property.create(property_params)
    if @property.save
      render json: @property, status: :created
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  def update
    if @property.update(property_params)
      render json: { message: 'Property Updated' }, status: :ok
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @property = Property.find(params[:id])
    if @property.destroy
      render json: { message: 'Property Removed' }, status: :ok
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  private

  def property_params
    params.require(:property).permit(:name, :city, :address, :bed, :bath, :size, :parking, :description, images: [])
  end
end
