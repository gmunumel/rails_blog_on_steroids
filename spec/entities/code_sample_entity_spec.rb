require 'rails_helper'

describe Entities::CodeSampleEntity do
  describe 'fields' do
    subject(:subject) { Entities::CodeSampleEntity }
    specify { expect(subject).to represent(:code)}
  end
end