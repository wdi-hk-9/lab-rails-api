module API
  class MoviesController < ApplicationController
    def index
      render json: Bowtie.all
    end

    def show
      render json: Bowtie.find(params[:id])
    end
  end
end