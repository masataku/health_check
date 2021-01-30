module SignInSupport
  def sign_in(school)
    visit login_form_schools_path
    fill_in "school_email", with: school.email
    fill_in "school_password", with: school.password
    fill_in "school_password_confirmation", with: school.password_confirmation
    find('input[name="commit"]').click
    expect(current_path).to eq school_path(school)
  end  
end  