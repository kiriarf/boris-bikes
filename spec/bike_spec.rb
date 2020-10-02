require 'Bike'

describe Bike do
    let(:bike) {Bike.new}

    it "can understand that it is working" do
        expect(bike.working?).to be true
    end

    it "can be reported broked" do
        bike.report_broken
        expect(bike.working?).to be false
    end
end
