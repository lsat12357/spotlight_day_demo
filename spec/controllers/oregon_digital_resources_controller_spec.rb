require 'rails_helper'

RSpec.describe OregonDigitalResourcesController, :type => :controller do
  let(:exhibit) { FactoryGirl.create(:exhibit) }

  describe 'POST create' do
    let(:blacklight_solr) { double }
    let(:user) { User.create(:email => 'blah@blah.com', :password => "admin123")}
    before do
      sign_in(user) if user
    end
    it 'creates a resource' do
      expect_any_instance_of(Spotlight::Resource).to receive(:reindex_later).and_return(true)
      allow_any_instance_of(Spotlight::Resource).to receive(:blacklight_solr).and_return blacklight_solr
      post :create, :exhibit_id => exhibit, :oregon_digital_resource => { url: 'info:uri' } 
      expect(assigns[:resource]).to be_persisted
    end
  end
end

