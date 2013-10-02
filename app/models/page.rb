class Page < ActiveFedora::Base
  has_metadata 'descMetadata', type: PageMetadata

  belongs_to :book, :property=> :is_part_of

  has_file_datastream "pageContent"

  delegate :number, to: 'descMetadata', unique: :true
  delegate :text, to: 'descMetadata', unique: :true
  
end