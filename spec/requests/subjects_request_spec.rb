require 'rails_helper'

RSpec.describe "Subjects", type: :request do
    describe "GET subject#index" do
        it "should get index" do
          get subjects_path
          expect(response).to have_http_status(200)
        end

        it "renders the index template" do
            get subjects_path
            expect(response.body).to include("Subjects")
        end
    end

    describe "POST subjects#create" do
        it 'create subject with valid attributes' do
            subject_params = { 
                name: 'Maths',
                position: 1,
                visible: true
            } 

          post subjects_path, :params => {:subject => subject_params}
          expect(response).to have_http_status(302)
        end
    end


    describe 'PUT subjects#update' do
        it 'should update the position' do
            subject_params = { 
                name: 'Maths',
                position: 1,
                visible: true
            }
    
            new_subject_params = { 
                name: 'Maths',
                position: 2,
                visible: true
            }

            subject = Subject.create(subject_params)
            patch subject_path(subject.id), :params => {:subject => new_subject_params}
            expect(response).to have_http_status(302)
        end
    end

    describe 'DELETE subjects#destroy' do
        it 'should create and delete the object' do
            subject_params = { 
                name: 'Maths',
                position: 1,
                visible: true
            }

            subject = Subject.create(subject_params)
            delete subject_path(subject.id)
            expect(response).to have_http_status(302)
        end
    end
end
