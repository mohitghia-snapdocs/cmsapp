require 'rails_helper'

RSpec.describe Page, type: :model do
  #it { should belong_to(:subject) }
  it { should belong_to(:subject) }

  it { should validate_presence_of(:name) }

  before { Page.create(name: 'Page1') }
  it { should validate_uniqueness_of(:name) }

  it { should validate_presence_of(:position) }

  before { Page.create(position: 1) }
  it { should validate_uniqueness_of(:position) }

  it { should validate_presence_of(:visible) }
end
