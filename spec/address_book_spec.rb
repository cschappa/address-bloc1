require_relative '../models/address_book'

RSpec.describe AddressBook do
  describe "attributes" do
    it "responds to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "initializes entries as an array" do
      book = AddressBook.new
      expect(book.entries).to be_an(Array)
    end

    it "initializes entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq(0)
    end
  end

  describe "#add_entry" do
    it "adds only one entry to address book" do
      book = AddressBook.new
      book.add_entry("Ana Lovelace", "555.555.1212", "ana@lovelace.com")
      expect(book.entries.size).to eq(1)
    end
    it "adds the correct information to entry" do
      book = AddressBook.new
      book.add_entry("Ana Lovelace", "555.555.1212", "ana@lovelace.com")
      new_entry = book.entries[0]

      expect(new_entry.name).to eq("Ana Lovelace")
      expect(new_entry.phone_number).to eq("555.555.1212")
      expect(new_entry.email).to eq("ana@lovelace.com")
    end
  end
end
