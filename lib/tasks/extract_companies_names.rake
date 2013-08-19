desc "extract Companies' names"
task :extract_companies_names => :environment do

  filename = Rails.root.join('lib/tasks/c0001021.pdf')
  PDF::Reader.open(filename) do |reader|

    page = reader.pages[0]
    page_text = page.text

    filtered = page_text.gsub(" .", '').slice(page_text.index("SOMMAIRE")..-1)
    puts filtered.scan(/(\p{l}[\p{l} \.-]*)\s+\d+/i)

  end
end