require 'rails_helper'

RSpec.describe "Characters", type: :request do

  path '/characters/all' do

    get 'All Characters' do
      tags 'acore_characters'
      produces 'application/json'

      response '200', 'success' do
        run_test!
      end

      response '500', 'error' do
        let(:error) { { } }
        run_test!
      end
    end
  end

  path '/characters/get/' do

    post 'Get a single Character' do
      tags 'acore_characters'
      consumes 'application/json'
      parameter name: :character, in: :body, schema: {
        type: :object,
        properties: {
          guid: { type: :integer }
        },
        required: [ 'guid' ]
      }
      response '200', 'success' do
        let(:character) { { guid: 1 } }
        run_test!
      end

      response '500', 'error' do
        let(:error) { { } }
        run_test!
      end
    end
  end

end
