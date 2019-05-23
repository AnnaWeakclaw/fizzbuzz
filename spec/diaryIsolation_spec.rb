require "diaryIsolation"
describe Diary do
  before(:each) do 
    @entry_double = double(title: "Me")
    entry_class_double = double(:entry_class, new: @entry_double)
    @diary = Diary.new(entry_class_double)
    @diary.add("Me", "Learning")
    @diary.add("", "")
  end

  it "can add entries" do
    expect(@diary.entries).to include(@entry_double)
  end

  it "lists all the titles in the diary" do
    @diary.index
    expect(@diary.titles).to eq(%w(Me Me))
  end
end
