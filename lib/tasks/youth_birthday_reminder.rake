desc "Create a notification for volunteers when a youth has a birthday coming in the next month"
task youth_birthday_reminder: :environment do
  CasaCase.birthday_next_month.each do |casa_case|
    YouthBirthdayNotification
      .with(casa_case: casa_case)
      .deliver(Volunteer.find_by(id: casa_case.case_assignments.first.volunteer_id))
  end
end
