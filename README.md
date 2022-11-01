rails g scaffold property city:string district:string street:string bed:integer bath:integer size:float parking:integer description:text

rails g scaffold_controller property

gem "image_processing", "~> 1.2"
rails active_storage:install

// development.rb
config.active_storage.service = :local

// storage.yml
test:
  service: Disk
  root: <%= Rails.root.join("tmp/storage") %>

local:
  service: Disk
  root: <%= Rails.root.join("storage") %>