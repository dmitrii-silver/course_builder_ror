require "rails_helper"

RSpec.describe CoursesController, type: :controller do
  describe "index action" do
    context "GET #index" do
      it "has a 200 status code" do
        get :index
        expect(response.status).to eq(200)
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
    end
  end

  describe "create action" do
    context "GET #create" do
      it "redirects to show" do
        post :create, :params => { :course => { name: "Course", volume: "Volume", annotation: "Annotation", description_text: "Text" } }
        expect(response).to redirect_to(course_path(assigns(:course)))
      end

      it "renders new page" do
        post :create, :params => { :course => { name: nil, volume: nil, annotation: "Annotation", description_text: "Text" } }
        expect(response).to render_template("new")
      end

      it "responds to html by default" do
        post :create, :params => { :course => { name: "Course", volume: "Volume", annotation: "Annotation", description_text: "Text" } }
        expect(response.content_type).to eq "text/html; charset=utf-8"
      end
    end
  end
  
  describe "show action" do
    context "GET #show" do
    let(:course) { Course.create(name: "Course", volume: "Volume", annotation: "Annotation", description_text: "Text") }
      it "return a success response" do
        get :show, params: { id: course }
        expect(response.status).to eq(200)
      end
    end
  end
end