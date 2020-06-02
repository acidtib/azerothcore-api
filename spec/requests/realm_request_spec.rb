require 'rails_helper'

RSpec.describe "Realm", type: :request do
  path '/realm/info' do

    get 'Realm Info' do
      tags 'acore_auth'
      produces 'application/json'

      response '200', 'success' do
        examples 'application/json' => {
          id: 1,
          title: 'Hello world!',
          content: '...'
        }
        run_test!
      end

      response '500', 'error' do
        let(:error) { { } }
        run_test!
      end
    end
  end

  path '/realm/uptime' do

    get 'Realm Uptime' do
      tags 'acore_auth'
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

  path '/realm/characters' do

    get 'Realm Characters' do
      tags 'acore_auth'
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
end
