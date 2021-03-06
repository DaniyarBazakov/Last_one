class HorribleFactsController < ApplicationController

  def index
    @navbar_title = "Horrible Facts"
    if !user_signed_in?
      redirect_to new_user_session_path
    else
    @horrible_facts = HorribleFact.all
    end
  end

  def show
    @navbar_title = "Horrible Facts"
    #display the HF once the user has clicks on one horrible fact OR display one HF randomly
    @horrible_fact = HorribleFact.where(id: params[:id])


  end

  def random
    @navbar_title = "Horrible Facts"
    if !user_signed_in?
      redirect_to new_user_session_path
    else
    @horrible_facts = HorribleFact.all.shuffle
    end
  end

end

#Pages for horrible facts:

#Link in the email
#We should use the same page (horribleFacts/show/id). The links brings to this page with a horrible fact displayed randomly.
#Then the user can sweep right or left to see other horrible facts

#page horriblefact on the application
#We should use the same page (horribleFacts/show/id). The user can sweep right or left to see other horrible facts




#How to code the page regarding the possibility to sweep left/right ?
