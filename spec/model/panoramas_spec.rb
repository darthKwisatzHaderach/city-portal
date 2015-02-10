require 'rails_helper'

describe Panoramas do
  it 'panoramas should have path' do
    panorama = Panoramas.new(id: 29, path: '12', year: 2014, name: '12-этажка')
    expect { panorama.save }.to raise_error
  end
end
