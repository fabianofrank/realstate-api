# frozen_string_literal: true

class Api::V1::PropertiesController < ApplicationController
  def index
    @properties = Property.all
    render json: @properties
  end

  def show; end

  def new
    @property = Property.new
  end

  def edit; end

  def create
    @property = Property.new(property_params)

    if @property.save
      render json: @property, @property.cover_image, status: :created
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  def update
    @property = Property.find(params[:id])
    if @property.update(property_params)
      render json: { message: 'property Removed' }, status: :ok
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @property = Property.find(params[:id])
    if @property.destroy
      render json: { message: 'property Removed' }, status: :ok
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  private

  def property_params
    params.require(:property).permit(:name, :city, :address, :bed, :bath, :size, :parking, :description, images: [])
  end
end
