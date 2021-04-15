class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :nis
      t.string :nama
      t.string :jenis_kelamin
      t.string :tempat_lahir
      t.date :tanggal_lahir
      t.string :alamat
      t.string :asal_sekolah
      t.string :kelas
      t.string :jurusan

      t.timestamps
    end
  end
end
