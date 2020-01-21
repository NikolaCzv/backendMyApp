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
        trip = Trip.new(user_id: params[:user_id], start_date: params[:start_date], end_date: params[:end_date])
        
        if trip.valid?
            trip.save
            render json: trip
        else
            render json: { error: 'invalid dates' }, status: 401
        end
    end

    def destroy
        trip = Trip.find(params[:id]).destroy

        render json: trip
    end

    def update
        trip = Trip.find(params[:id])
        trip.update(user_id: params[:user_id], start_date: params[:start_date], end_date: params[:end_date], renter_id: params[:renter_id])

        render json: trip
    end
end
