#replace space with dash


def slugify
slug = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
end 
