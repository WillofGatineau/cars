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
    puts current_user.id 
    if @person = User.where('id= ?', 1).first.person.create(params[:person])
      #include success here  
    else 
      #this is where failure will be
    end  
    redirect_to("/users/index")
  end

end
