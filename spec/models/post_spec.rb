# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to belong_to :author }
  it { is_expected.to have_many(:comments).dependent(:destroy) }

  it { should validate_presence_of(:body).with_message('O corpo é obrigatório.') }
end
