class HorribleFactsController < ApplicationController
  
  def index
    @horrible_facts = HorribleFact.all
  end

  def show
    #display the HF once the user has clicks on one horrible fact OR display one HF randomly
    @horrible_facts = HorribleFact.where(id: params[:id]) 
  end

end

#Pages for horrible facts:

#Link in the email
#We should use the same page (horribleFacts/show/id). The links brings to this page with a horrible fact displayed randomly.
#Then the user can sweep right or left to see other horrible facts

#page horriblefact on the application
#We should use the same page (horribleFacts/show/id). The user can sweep right or left to see other horrible facts




#How to code the page regarding the possibility to sweep left/right ?