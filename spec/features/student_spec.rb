require 'rails_helper'


describe 'form page' do

  it 'submitted edit form submits content and renders form content' do
    @edit_student = Student.create(first_name: "Daenerys", last_name: "Targaryen")

    visit edit_student_path(@edit_student)

    fill_in 'student_first_name', with: "Lindsey"
    fill_in 'student_last_name', with: "Stirling"

    click_on "Update Student"

    expect(page).to have_content("Lindsey")
  end


  it 'submitted edit form creates a record in the database' do
    @edit_db_student = Student.create(first_name: "Daenerys", last_name: "Targaryen")

    visit edit_student_path(@edit_db_student)

    fill_in 'student_first_name', with: "Arya"
    fill_in 'student_last_name', with: "Stark"

    click_on "Update Student"

    expect(Student.last.first_name).to eq("Arya")
  end
end

describe 'Show page' do
  let(:student) { Student.create(first_name: "Daenerys", last_name: "Targaryen") }

  it 'renders properly' do
    visit student_path(student)
    expect(page.status_code).to eq(200)
  end

  it 'renders the student first_name' do
    visit student_path(student)
    expect(page).to have_content("Daenerys")
  end
end
