require 'open-uri'
class OregonDigitalBuilder < Spotlight::SolrDocumentBuilder
  def to_solr
    content = JSON.parse(open(resource.url).read)
    doc = content['response']['document']

      {
        id: doc['id'],
        full_title_tesim: doc['desc_metadata__title_tesim'],
        Spotlight::Engine.config.thumbnail_field => "http://localhost:3000/downloads/#{doc['id']}.jpg",
        oembed_url_ssm: "http://localhost:3000/resource/#{doc['id']}",
        creator_ssim: extract_label(doc['desc_metadata__creator_label_ssm']),
        photographer_ssim: extract_label(doc['desc_metadata__photographer_label_ssm']),
        description_tesim: doc['desc_metadata__description_tesim'],
        subject_ssim: extract_label(doc['desc_metadata__lcsubject_label_ssm']),
        set_ssim: extract_label(doc['desc_metadata__set_label_ssm'])
    }
  end

  def extract_label(arr)
    return [] unless !arr.nil?
    new_arr = []
    arr.each do |item|
      parts = item.split("$")
      new_arr << parts[0]
    end
    new_arr
  end

end
