require "./features/steps/shared.rb"

class Spinach::Features::UpdateToDo < Spinach::FeatureSteps
  include Shared::Standard

  step "I make a valid PUT request to a to-do item" do
    @response = Requests.put("/todo/1", '{"task":"an updated task"}', {
      "Content-Type": "application/json",
      "Accepts": "application/json"
    })
  end

  step "I make a PUT request with an unsupported media type to a to-do item" do
    @response = Requests.put("/todo/1", "<task>an updated task</task>", {
      "Content-Type": "text/xml"
    })
  end

  step "I make a PUT request with invalid values to the a to-do item" do
    @response = Requests.put("/todo/1", "", {
      "Content-Type": "application/x-www-form-urlencoded"
    })
  end
end
