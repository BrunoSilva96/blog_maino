# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author, type: :model do
  it { is_expected.to validate_presence_of(:nickname) }
  it { is_expected.to validate_uniqueness_of(:nickname).case_insensitive }

  it { is_expected.to have_many(:posts).dependent(:destroy) }
  it { is_expected.to have_many(:comments).dependent(:destroy) }

  it { is_expected.to belong_to :user }
end
