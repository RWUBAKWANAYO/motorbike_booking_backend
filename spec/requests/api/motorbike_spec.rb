require 'swagger_helper'

RSpec.describe 'api/motorbike', type: :request do
  path '/motorbikes' do
    post 'Creates a motorbike' do
      tags 'Motorbikes'
      consumes 'application/json'
      parameter name: :motorbike, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string },
          content: { type: :string }
        },
        required: %w[title content]
      }

      response '201', 'motorbike created' do
        let(:motorbike) { { title: 'foo', content: 'bar' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:motorbike) { { title: 'foo' } }
        run_test!
      end
    end
  end

  path '/motorbikes/{id}' do
    get 'Retrieves a motorbike' do
      tags 'Motorbikes', 'Another Tag'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'motorbike found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 title: { type: :string },
                 content: { type: :string }
               },
               required: %w[id title content]

        let(:id) { Motorbike.create(title: 'foo', content: 'bar').id }
        run_test!
      end

      response '404', 'motorbike not found' do
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
