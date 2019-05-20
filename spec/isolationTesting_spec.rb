require 'isolationTesting'

describe Note do
  it "can display notes" do
    formatter_double = double :formatter, format: "Title: My Title\nThis is some test text"
    note = Note.new("My Title", "This is some test text", formatter_double)
    expect(note.display).to eq("Title: My Title\nThis is some test text")
  end
end