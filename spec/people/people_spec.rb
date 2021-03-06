# frozen_string_literal: true

RSpec.describe FakePicture::People do
  context 'methods' do
    context ':man' do
      let(:path_to_picture) { described_class.man }

      it 'has this method' do
        expect(described_class).to respond_to(:man)
      end

      it 'returns path to file' do
        expect(path_to_picture).to include('man')
      end
    end

    context 'self.file(:man)' do
      let(:file) { described_class.file(:man) }

      it 'has this method' do
        expect(described_class).to respond_to(:file)
      end

      it 'returns file' do
        expect(File.file?(file)).to be_truthy
        expect(File.exist?(file)).to be_truthy
        expect(File.readable?(file)).to be_truthy
        expect(File.basename(file)).to include('man')
      end
    end
  end
end
