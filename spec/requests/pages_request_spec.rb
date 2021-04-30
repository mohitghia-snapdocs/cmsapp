require 'rails_helper'

RSpec.describe "Pages", type: :request do
    before(:context) do
        @subject = Subject.create(name: 'Chemistry',
            position: 4,
            visible: true)        
    end

    describe "POST pages#create" do
        it 'create pages with valid attributes' do
            page_params = { 
                name: 'Page1',
                position: 1,
                visible: true,
                subject_id: @subject.id
            } 
          post pages_path, :params => {:page => page_params}
          expect(response).to have_http_status(302)
        end
    end
    
    describe "GET pages#index" do
        it "should get index" do
          get pages_path
          expect(response).to have_http_status(200)
        end

        it "renders the index template" do
            get pages_path
            expect(response.body).to include("Pages")
        end
    end

    describe 'PUT pages#update' do
        it 'should update the position' do
            page_params = { 
                name: 'Page1',
                position: 1,
                visible: true,
                subject_id: @subject.id
            }
    
            new_page_params = { 
                name: 'Page1',
                position: 2,
                visible: true,
                subject_id: @subject.id
            }

            page = Page.create(page_params)
            patch page_path(page.id), :params => {:page => new_page_params}
            expect(response).to have_http_status(302)
        end
    end


    describe 'DELETE pages#destroy' do
        it 'should create and delete the object' do
            page_params = { 
                name: 'Page1',
                position: 1,
                visible: true,
                subject_id: @subject.id
            }
            page = Page.create(page_params)
            delete page_path(page.id)
            expect(response).to have_http_status(302)
        end
    end


    after(:context) do
        @subject.destroy        
    end
end

