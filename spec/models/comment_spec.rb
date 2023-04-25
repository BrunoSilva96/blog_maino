# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { is_expected.to belong_to(:author).optional }
  it { is_expected.to belong_to :post }

  it { should validate_presence_of(:note).with_message('O comentario é obrigatório.') }
end
