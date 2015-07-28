FactoryGirl.define do
 factory :book do
   title 'lalala'
   description 'lalala'
   attachment Rack::Test::UploadedFile.new(File.open(File.join(Rails.root,'spec', 'fixtures', 'books', 'Template.docx')))#File.open(File.join(Rails.root, '/spec/fixtures/books/Template.docx'))
   # after(:build) do |book, eval|
   #      book << FactoryGirl.build(book: book)
   #  end
   # after :create do |b|
   #    b.update_column(:attachment, "spec/fixtures/books/Template.docx")
   #  end
 end
end