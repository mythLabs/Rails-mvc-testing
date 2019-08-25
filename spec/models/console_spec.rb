require 'rails_helper'

RSpec.describe Console, :type => :model do

    subject {described_class.new(name: 'Wii', manufacturer: 'Nitendo')}

    describe 'Validations' do
        describe 'name' do
             it 'must be present' do
                expect(subject).to be_valid
                subject.name = nil
                expect(subject).to_not be_valid
             end
        end

         describe 'manufacturer' do
             it 'must be present' do
                expect(subject).to be_valid
                subject.manufacturer = nil
                expect(subject).to_not be_valid
             end
        end
    end

    describe '#formatted_name' do
        it 'returns the name and manufacturer in string' do
            expect(subject.formatted_name).to eql("Wii Nitendo")
        end
    end

    describe '.nitendo' do
        it 'return an ActiveRecord::Relations of consoles manufactured by nitendo' do
            NES = create(:console, name: "NES", manufacturer: "Nitendo")
            PS4 = create(:console, name: "PS4", manufacturer: "Sony")
            WII = create(:console, name: "NES", manufacturer: "Nitendo")

            expect(described_class.nitendo).to contain_exactly(WII,NES)
        end
    end
end