require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Alamat", with: @student.alamat
    fill_in "Asal sekolah", with: @student.asal_sekolah
    fill_in "Jenis kelamin", with: @student.jenis_kelamin
    fill_in "Jurusan", with: @student.jurusan
    fill_in "Kelas", with: @student.kelas
    fill_in "Nama", with: @student.nama
    fill_in "Nis", with: @student.nis
    fill_in "Tanggal lahir", with: @student.tanggal_lahir
    fill_in "Tempat lahir", with: @student.tempat_lahir
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Alamat", with: @student.alamat
    fill_in "Asal sekolah", with: @student.asal_sekolah
    fill_in "Jenis kelamin", with: @student.jenis_kelamin
    fill_in "Jurusan", with: @student.jurusan
    fill_in "Kelas", with: @student.kelas
    fill_in "Nama", with: @student.nama
    fill_in "Nis", with: @student.nis
    fill_in "Tanggal lahir", with: @student.tanggal_lahir
    fill_in "Tempat lahir", with: @student.tempat_lahir
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
