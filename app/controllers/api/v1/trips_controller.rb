class Api::V1::TripsController < ApplicationController

    def index
        trips = Trip.all

        render json: trips
    end

    def show
        trip = Trip.find(params[:id])

        render json: trip
    end

    def create
        trip = Trip.create(user_id: params[:user_id], start_date: params[:start_date], end_date: params[:end_date])
        
        render json: trip
    end
end
