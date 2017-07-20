require 'fileutils'

at_exit do
  uploads_path = Rails.root.join('public/uploads/image/image/')
  FileUtils.remove_dir(uploads_path) if uploads_path.directory?
end