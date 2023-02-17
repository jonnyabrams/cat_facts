class CatFactsController < ApplicationController
  def index
    @cat_fact = CatFact.new
    @cat_facts = CatFact.all
  end

  def create
  end
end
