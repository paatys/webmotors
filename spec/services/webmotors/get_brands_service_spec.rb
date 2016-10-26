require 'rails_helper'

RSpec.describe Webmotors::GetBrandsService do
  describe '#get' do
    it 'success get brands in webmotors' do
      Make.destroy_all
      Webmotors::GetBrandsService.get
      expect(Make.all.size).to eq 179
    end
  end
end
