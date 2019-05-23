class Diary
  attr_reader :entries, :titles
  def initialize(almost_entry = Entry)
    @entries = []
    @almost_entry = almost_entry
  end

  def add(title, body)
    entry = @almost_entry.new(title, body)
    @entries << entry
  end

  def index
    @titles = @entries.map do |entry|
      entry.title
    end
   @titles.join("\n")
  end
end

class Entry
  def initialize(title, body)
    @title = title
    @body = body
  end

  attr_reader :title
end

