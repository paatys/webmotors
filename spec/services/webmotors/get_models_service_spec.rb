require 'rails_helper'

RSpec.describe Webmotors::GetModelsService do
  describe '#get' do
  	context 'import maker'
  	let(:make) { double("Make", id: 1) }
    it 'success get brands in webmotors' do
    	allow(Make).to receive(:where).and_return(make)
    	allow(make).to receive(:take).and_return(make)
      Webmotors::GetModelsService.get(4)
      expect(Model.all.size).to eq 36
    end
  end
end
