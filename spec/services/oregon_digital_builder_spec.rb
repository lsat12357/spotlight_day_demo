require 'rails_helper'

RSpec.describe 'OregonDigitalBuilder' do
  let(:exhibit) { FactoryGirl.create(:exhibit) }
  let(:doc_builder) { OregonDigitalBuilder.new(resource) }
  let(:resource) { Spotlight::Resource.new }
  let(:content) {
    {"id"=>"oregondigital:123456"}
   }
    
    
  describe '#to_solr' do
    
    subject { doc_builder.send(:to_solr) }
    before do
      allow(resource).to receive(:exhibit).and_return(exhibit)
      allow(doc_builder).to receive(:get_data).and_return(content)
    end
    it 'maps the metadata from OD' do
      expect(subject[:id]).to eq("oregondigital:123456")
    end
  end
end
