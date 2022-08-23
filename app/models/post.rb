class Post < ApplicationRecord
  # include ValidatesHcaptcha
  after_create_commit { broadcast_prepend_to "posts" }
  after_update_commit { broadcast_replace_to "posts" }
  after_destroy_commit { broadcast_remove_to "posts" }

  has_rich_text :body
  validates :body, presence: true
end
