class DogsController < ApplicationController
  def create
    dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed],
    )
    if dog.save
      render json: dog
    else
      render json: { errors: dog.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
