require 'rails_helper'

RSpec.describe DetentionCell, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_numericality_of(:turn).only_integer.is_greater_than(0) }
end
