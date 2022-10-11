require 'swagger_helper'

RSpec.describe 'api/category', type: :request do
  path '/categories' do
    post 'Creates a category' do
      tags 'Categories'
      consumes 'application/json'
      parameter name: :category, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string },
          content: { type: :string }
        },
        required: %w[title content]
      }

      response '201', 'category created' do
        let(:category) { { title: 'foo', content: 'bar' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:category) { { title: 'foo' } }
        run_test!
      end
    end
  end

  path '/categories/{id}' do
    get 'Retrieves a category' do
      tags 'Categories', 'Another Tag'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'category found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 title: { type: :string },
                 content: { type: :string }
               },
               required: %w[id title content]

        let(:id) { Category.create(title: 'foo', content: 'bar').id }
        run_test!
      end

      response '404', 'category not found' do
        let(:id) { 'invalid' }
        run_test!
      end

      response '406', 'unsupported accept header' do
        let(:Accept) { 'application/foo' }
        run_test!
      end
    end
  end
end
