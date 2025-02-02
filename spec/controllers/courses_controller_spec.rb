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
    context "#create" do
      it "redirects to show" do
        post :create, params: {
          course: {
            name: "Course",
            volume: "Volume",
            annotation: "Annotation",
            description_text: "Text" 
            } 
          }
        expect(response).to redirect_to(course_path(assigns(:course)))
      end

      it "renders new page" do
        post :create, params: {
          course: {
           name: nil,
           volume: nil,
           annotation: "Annotation",
           description_text: "Text"
          }
        }
        expect(response).to render_template("new")
      end

      it "responds to html by default" do
        post :create, params: {
          course: {
            name: "Course",
            volume: "Volume",
            annotation: "Annotation",
            description_text: "Text"
          }
        }
        expect(response.content_type).to eq "text/html; charset=utf-8"
      end
    end
  end
  
  describe "show action" do
    context "GET #show" do
    let(:course) { Course.create(
      name: "Course",
      volume: "Volume",
      annotation: "Annotation",
      description_text: "Text"
      )
    }
      it "return a success response" do
        get :show, params: { id: course }
        expect(response.status).to eq(200)
      end

      it "renders the show template" do
        get :show, params: { id: course }
        expect(response).to render_template("show")
      end
    end
  end

  describe "new action" do
    context "GET #new" do
      it "has a 200 status code" do
        get :new
        expect(response.status).to eq(200)
      end

      it "renders the new template" do
        get :new
        expect(response).to render_template("new")
      end

      it "is valid with complete data" do
        course = Course.new(
          name: "Course",
          volume: "Volume",
          annotation: "Annotation",
          description_text: "Text"
          )
        expect(course.valid?).to be true
      end
      
      it "is invalid with incomplete data" do
        course = Course.new(
          name: "Course",
          volume: nil,
          annotation: "Annotation",
          description_text: "Text"
          )
        expect(course.valid?).to be false
      end
    end
  end

  describe "destroy action" do
    context "#destroy" do
      it "confirm the object was destroyed" do
        course = Course.create(
          name: "Course",
          volume: "Volume",
          annotation: "Annotation",
          description_text: "Text"
          )
        course.destroy        
        expect(course.destroyed?).to be(true)
      end
    end
  end

  describe "update action" do
    context "#edit" do
    let(:course) { Course.create(
      name: "Course",
      volume: "Volume",
      annotation: "Annotation",
      description_text: "Text"
      )
    }
      
      it " return the update object" do
        course.update(
          name: "New course",
          volume: "Volume",
          annotation: "Annotation",
          description_text: "Text"
          )
        expect(course.name).to eq("New course")
      end
    end
  end

  describe "edit action" do
    context "GET #edit" do
    let(:course) { Course.create(
      name: "Course",
      volume: "Volume",
      annotation: "Annotation",
      description_text: "Text"
      )
    }
      it "renders the edit temptate" do
        get :edit, params: { id: course }
        expect(response).to render_template("edit")
      end

      it "has a 200 status code" do
        get :edit, params: { id: course }
        expect(response.status).to eq(200)
      end
    end
  end
end
