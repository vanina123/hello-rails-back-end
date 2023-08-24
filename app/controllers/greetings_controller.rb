class GreetingsController < ApplicationController
    def index
        @greetings = Greeting.all
        render json: @greetings
      end
    
      def random
        @greeting = Greeting.order('RANDOM()').first
        render json: @greeting
      end
   
end
