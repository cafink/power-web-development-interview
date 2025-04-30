FactoryBot.define do
  factory :comment do
    author { "MyString" }
    text { "MyString" }
    post_id { 1 }
  end

  factory :post do
    title { "MyString" }
    text { "MyString" }
  end

end
