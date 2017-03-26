require 'rails_helper'

describe Entities::ProjectEntity do
  describe 'fields' do
    subject(:subject) { Entities::ProjectEntity }
    specify { expect(subject).to represent(:name)}
  end
end