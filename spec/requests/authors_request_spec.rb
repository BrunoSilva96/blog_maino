# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Authors', type: :request do
  describe 'validations' do
    it 'is valid with valid attributes' do
      author = build(:author)
      expect(author).to be_valid
    end

    it 'is not valid without a name' do
      author = build(:author, nickname: nil)
      expect(author).not_to be_valid
    end

    it 'is not valid without an email' do
      author = build(:author, email: nil)
      expect(author).not_to be_valid
    end
  end
end
