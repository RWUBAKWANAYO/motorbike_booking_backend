require 'swagger_helper'

RSpec.describe 'api/reservation', type: :request do
  path '/reservation' do
    post 'Creates a reservation' do
      tags 'Reservation'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string },
          content: { type: :string }
        },
        required: %w[title content]
      }

      response '201', 'reservation created' do
        let(:reservation) { { title: 'foo', content: 'bar' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:reservation) { { title: 'foo' } }
        run_test!
      end
    end
  end

  path '/reservtions/{id}' do
    get 'Retrieves a reservation' do
      tags 'Reservations', 'Another Tag'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'reservation found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 title: { type: :string },
                 content: { type: :string }
               },
               required: %w[id title content]

        let(:id) { Reservation.create(title: 'foo', content: 'bar').id }
        run_test!
      end

      response '404', 'reservation not found' do
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
