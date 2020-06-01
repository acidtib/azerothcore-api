require 'rails_helper'

RSpec.describe "Realm", type: :request do
  path '/realm/info' do

    get 'Realm Info' do
      tags 'Realm'
      parameter name: :success, in: :body, schema: {
        type: :object,
        properties: {
          id: { type: :integer },
          name: { type: :string },
          address: { type: :string },
          timezone: { type: :integer },
          population: { type: :string },
          gamebuild: { type: :string }
        }
      }

      response '200', 'success' do
        # let(:success) { }
        run_test!
      end

      response '500', 'error' do
        let(:error) { { } }
        run_test!
      end
    end
  end
end
