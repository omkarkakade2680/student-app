class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
     
      t.string :gender
      t.string :address
      t.string :country
      t.string :hobbies
      t.string :passward

      t.timestamps
    end
  end
end
