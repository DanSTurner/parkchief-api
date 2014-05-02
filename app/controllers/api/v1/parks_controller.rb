module Api
  module V1
    class ParksController < ApplicationController
      # GET /parks
      # GET /parks.json
      def index
        @parks = Park.all

        render json: @parks
      end

      # GET /parks/1
      # GET /parks/1.json
      def show
        @park = Park.find(params[:id])

        render json: @park
      end

      # POST /parks
      # POST /parks.json
      def create
        @park = Park.new(params[:park])

        if @park.save
          render json: @park, status: :created, location: @park
        else
          render json: @park.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /parks/1
      # PATCH/PUT /parks/1.json
      def update
        @park = Park.find(params[:id])

        if @park.update(params[:park])
          head :no_content
        else
          render json: @park.errors, status: :unprocessable_entity
        end
      end

      # DELETE /parks/1
      # DELETE /parks/1.json
      def destroy
        @park = Park.find(params[:id])
        @park.destroy

        head :no_content
      end
    end
  end
end