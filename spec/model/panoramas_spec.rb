require 'rails_helper'

describe Panoramas do
  it 'panoramas should have image path' do
    panorama = Panoramas.new(id: 29, path: '12', year: 2014, name: '12-этажка')
    expect { panorama.save }.to raise_error
  end

  it 'panoramas should have path' do
    panorama = Panoramas.new(id: 29, year: 2014, img_path: '/panoramas/12_preview.jpg', name: '12-этажка')
    expect { panorama.save }.to raise_error
  end
end
