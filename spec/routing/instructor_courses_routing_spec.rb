require "rails_helper"

RSpec.describe InstructorCoursesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/instructor_courses").to route_to("instructor_courses#index")
    end

    it "routes to #show" do
      expect(get: "/instructor_courses/1").to route_to("instructor_courses#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/instructor_courses").to route_to("instructor_courses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/instructor_courses/1").to route_to("instructor_courses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/instructor_courses/1").to route_to("instructor_courses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/instructor_courses/1").to route_to("instructor_courses#destroy", id: "1")
    end
  end
end
