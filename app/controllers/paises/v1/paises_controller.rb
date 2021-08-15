module Paises
  module V1
    class PaisesController < ApplicationController
      def index

        Paise.loadPaises if Paise.sizePaises === 0
        paises = Paise.getPaises

        render json: {
            status: 'Success',
            message: 'Paises registrados',
            data: paises
        }, status: :ok
      end

      def show
        pais = Paise.pais(params[:id])
        render json: {
            status: 'Success',
            message: 'Paises registrados',
            data: pais
        }, status: :ok
      end
    end
  end
end