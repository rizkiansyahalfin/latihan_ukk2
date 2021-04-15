json.extract! student, :id, :nis, :nama, :jenis_kelamin, :tempat_lahir, :tanggal_lahir, :alamat, :asal_sekolah, :kelas, :jurusan, :created_at, :updated_at
json.url student_url(student, format: :json)
