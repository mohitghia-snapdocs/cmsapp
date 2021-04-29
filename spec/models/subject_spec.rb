require 'rails_helper'

RSpec.describe Subject, type: :model do
  it { should have_many(:pages) }

  it { should validate_presence_of(:name) }

  before { Subject.create(name: 'Physics') }
  it { should validate_uniqueness_of(:name) }

  it { should validate_presence_of(:position) }

  before { Subject.create(position: 1) }
  it { should validate_uniqueness_of(:position) }

  it { should validate_presence_of(:visible) }

#  pending "add some examples to (or delete) #{__FILE__}"
end
