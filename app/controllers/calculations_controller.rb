class CalculationsController < ApplicationController
    def calculate_imc
      weight = params[:weight].to_f
      height = params[:height].to_f
      if weight > 0 && height > 0
        imc = weight / (height * height)
        imc = imc.round(2);
        render json: { imc: imc }, status: :ok
      else
        render json: { error: 'Invalid input' }, status: :unprocessable_entity
      end
    end
  end
  