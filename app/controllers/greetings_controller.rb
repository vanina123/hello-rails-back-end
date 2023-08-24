# frozen_string_literal: true

# module
class GreetingsController < ApplicationController
  def random
    @greeting = Greeting.order('RANDOM()').first
    render json: @greeting
  end
end
