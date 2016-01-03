require 'open-uri'

class SearchController < ApplicationController
  def index
  end

  def results
    @word = params.require(:query)
    @json = JSON.load(open(URI.encode("https://obscure-peak-4200.herokuapp.com/?word=" + @word)))

    render layout: false
  end


end
