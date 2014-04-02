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
  end

end
