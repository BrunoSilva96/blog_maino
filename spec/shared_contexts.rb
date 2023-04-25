# frozen_string_literal: true

RSpec.shared_context 'api request global before and after hooks' do
  before(:each) do
    Warden.test_mode!
  end

  after(:each) do
    Warden.test_reset!
  end
end

RSpec.shared_context 'api request authentication helper methods' do
  def sign_in(author)
    login_as(author, scope: :author)
  end

  def sign_out
    logout(:author)
  end
end
