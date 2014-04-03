class PeopleController < ApplicationController

  def new

    @person = Person.new
    @provinces = [
      ["Quebec", "QC"],
      ["Ontario", "ON"],
      ["Manitoba", "MB"],
      ["Saskatchewan", "SK"],
      ["Alberta", "AB"],
      ["British-Columbia", "BC"],
      ["Yukon", "YT"],
      ["Northwest Territory", "NT"],
      ["Nunavut", "NU"],
      ["New Brunswick", "NB"],
      ["Nova Scotia", "NS"],
      ["Prince Edward", "PE"],
      ["Newfound Land", "NL"]
    ]
  end

  def create
    #this line below is generating a nil class error, has something to do with the association.
    if @person = current_user.person.(params[:person])
      #include success here  
    else 
      #this is where failure will be
    end  
    redirect_to("/users/index")
  end

end
