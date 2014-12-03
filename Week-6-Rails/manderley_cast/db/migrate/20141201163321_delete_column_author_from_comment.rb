class DeleteColumnAuthorFromComment < ActiveRecord::Migration
  def change
    remove_column :comments, :author
  end
end
