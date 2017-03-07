require_relative '../models/entry'

RSpec.describe Entry do
  describe "attributes" do
    let(:entry) { Entry.new("Ana Lovelace", "555.555.1212", "ana@lovelace.com") }
    it "responds to name" do
      expect(entry).to respond_to(:name)
    end

    it "reports its name" do
      expect(entry.name).to eq("Ana Lovelace")
    end

    it "responds to phone number" do
      expect(entry).to respond_to(:phone_number)
    end

    it "reports its phone number" do
      expect(entry.phone_number).to eq("555.555.1212")
    end

    it "responds to email" do
      expect(entry).to respond_to(:email)
    end

    it "reports its email" do
      expect(entry.email).to eq("ana@lovelace.com")
    end
  end

  describe "#to_s" do
    it "prints and entry as a string" do
      entry = Entry.new("Ana Lovelace", "555.555.1212", "ana@lovelace.com")
      expected_string = "Name: Ana Lovelace\nPhone Number: 555.555.1212\nEmail: ana@lovelace.com"
      expect(entry.to_s).to eq(expected_string)
    end
  end
end
