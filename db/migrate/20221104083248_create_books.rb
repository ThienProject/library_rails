class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :idStudent_260
      t.string :fullname_260
      t.string :standard_260
      t.string :idBook_260
      t.string :author_260
      t.string :bookType_260
      t.string :NumBM_260
      t.date :dateBegin_260
      t.date :dateEnd_260
      t.integer :totalDate

      t.timestamps
    end
  end
end
