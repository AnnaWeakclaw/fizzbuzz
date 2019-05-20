require "isolationTesting"

describe Note do
  it "can display notes" do
    formatter_double = double :formatter, format: "Title: My Title\nThis is some test text"
    note = Note.new("My Title", "This is some test text", formatter_double)
    expect(note.display).to eq("Title: My Title\nThis is some test text")
  end
end

describe NoteFormatter do
  it "can format notes" do
    formatter = NoteFormatter.new
    note_double = double :note
    expect(note_double).to receive(:title){ "My Title" }
    expect(note_double).to receive(:body){ "This is some test text" }
    
    expect(formatter.format(note_double)).to eq ("Title: My Title\nThis is some test text")
  end
end
