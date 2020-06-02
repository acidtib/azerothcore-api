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

  path '/characters/get/{params}' do

    get 'Get a single Character by guid or name' do
      tags 'acore_characters'
      produces 'application/json'

      parameter name: :params, in: :path, type: :string

      response '200', 'success' do
        schema type: :object,
          properties: {
            guid: { type: :integer },
            class: { type: :integer },
            account: { type: :integer },
            name: { type: :string },
            race: { type: :integer },
            gender: { type: :integer },
            level: { type: :integer },
            xp: { type: :integer },
            money: { type: :integer }
          }

        let(:character) { { params: 1 } }
        run_test!
      end

      response '500', 'error' do
        let(:error) { { } }
        run_test!
      end
    end
    
  end

end
