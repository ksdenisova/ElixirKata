require "uri"
require "./features/steps/shared.rb"

class Spinach::Features::CreateToDo < Spinach::FeatureSteps
  include Shared::Standard
  
  step "I make a POST request with an unsupported media type" do
    @response = Requests.post("/todo", "<task>a new task</task>", {
      "Content-Type": "text/xml; charset=utf-8"
    })
  end

  step "I make a POST request with invalid values" do
    @response = Requests.post("/todo", "a new task", {
      "Content-Type": "application/x-www-form-urlencoded"
    })
  end
end
