class CreatePatientenverfuegungs < ActiveRecord::Migration[6.1]
  def change
    create_table :patientenverfuegungs do |t|
      t.boolean :apallisch
      t.boolean :krankenhaus
      t.boolean :reanimation
      t.boolean :lockedin
      t.boolean :maligner
      t.boolean :demenz
      t.boolean :sterbeprozess
      t.boolean :palliativ
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
