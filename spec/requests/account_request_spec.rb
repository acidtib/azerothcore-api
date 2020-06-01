require 'rails_helper'

RSpec.describe "Accounts", type: :request do
  path '/account/login' do

    post 'Login an account' do
      tags 'Account'
      consumes 'application/json'
      parameter name: :account, in: :body, schema: {
        type: :object,
        properties: {
          username: { type: :string },
          password: { type: :string }
        },
        required: [ 'username', 'password' ]
      }
      parameter name: :error, in: :body, schema: {
        type: :object,
        properties: {
          error: { type: :string }
        }
      }
      parameter name: :success, in: :body, schema: {
        type: :object,
        properties: {
          token: { type: :string },
          exp: { type: :string },
          username: { type: :string }
        }
      }

      response '200', 'login successful' do
        let(:success) { { username: 'test1', password: 'a' } }
        run_test!
      end

      response '401', 'wrong password' do
        let(:error) { { username: 'test1', password: 'aaaa' } }
        run_test!
      end

      response '404', 'account not found' do
        let(:error) { { username: 'test420', password: 'a' } }
        run_test!
      end

      response '500', 'error' do
        let(:error) { { } }
        run_test!
      end
    end
  end

  path '/account/register' do

    post 'Register an account' do
      tags 'Account'
      consumes 'application/json'
      parameter name: :account, in: :body, schema: {
        type: :object,
        properties: {
          username: { type: :string },
          password: { type: :string },
          email: { type: :string }
        },
        required: [ 'username', 'password', 'email' ]
      }
      parameter name: :error, in: :body, schema: {
        type: :object,
        properties: {
          error: { type: :string }
        }
      }
      parameter name: :success, in: :body, schema: {
        type: :object,
        properties: {
          token: { type: :string },
          exp: { type: :string },
          username: { type: :string }
        }
      }

      response '201', 'account created' do
        let(:success) { { username: 'test1', password: 'a', email: 'email@example.com' } }
        run_test!
      end

      response '403', 'username is taken' do
        let(:error) { { username: 'test1', password: 'aaaa', email: 'email@example.com' } }
        run_test!
      end

      response '404', 'email is taken' do
        let(:error) { { username: 'test420', password: 'a', email: 'email@example.com' } }
        run_test!
      end

      response '500', 'error' do
        let(:error) { { } }
        run_test!
      end
    end
  end
end
