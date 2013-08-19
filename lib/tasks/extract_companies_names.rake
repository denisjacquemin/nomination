desc "extract Companies' names"
task :extract_companies_names => :environment do

  filename = Rails.root.join('lib/tasks/c0001021.pdf')
  PDF::Reader.open(filename) do |reader|

    page = reader.pages[0]
    page_text = page.text

    filtered = page_text.gsub(" .", '').slice(page_text.index("SOMMAIRE")..-1)
    filtered.scan(/(\p{l}[\p{l} \.-]*)\s+\d+/i).each do |company_name|
      company = Company.find_or_create_by!(extrated_name: company_name[0])
      puts company.extrated_name
    end

  end
end