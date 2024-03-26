class WelcomeController < ApplicationController
  def index
    @instruments = Instrument.all
  end
end
