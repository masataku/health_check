module ConfirmSupport
  def confirm(school)
    expect(page).to have_content("設定")
    find(".confirm-btn").click
    expect(current_path).to eq confirm_school_path(school)  
    fill_in "school_email", with: school.email
    fill_in "school_password", with: school.password
    fill_in "school_password_confirmation", with: school.password_confirmation
    find('input[name="commit"]').click
    expect(current_path).to eq edit_school_path(school)
  end  
end  