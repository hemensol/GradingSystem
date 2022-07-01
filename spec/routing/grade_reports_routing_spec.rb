require "rails_helper"

RSpec.describe GradeReportsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/grade_reports").to route_to("grade_reports#index")
    end

    it "routes to #show" do
      expect(get: "/grade_reports/1").to route_to("grade_reports#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/grade_reports").to route_to("grade_reports#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/grade_reports/1").to route_to("grade_reports#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/grade_reports/1").to route_to("grade_reports#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/grade_reports/1").to route_to("grade_reports#destroy", id: "1")
    end
  end
end
