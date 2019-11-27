class HorribleFactsController < ApplicationController
  
  def index
    @horrible_facts = HorribleFact.all
  end

  def show
    #display the HF once the user has clicks on one horrible fact OR display one HF randomly
    @horrible_facts = HorribleFact.where(id: params[:id]) 
  end

end
