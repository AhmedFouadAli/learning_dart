import 'instructor.dart';

void main() {
  final instructor = Instructor(
      firstName: 'Ahmed',
      secondName: 'Fouad',
      lastName: 'Ali',
      phoneNumber: '123-456-7890',
      id: 20182020,
      rank: Rank.AssistantProfessor,
      officeLocation: {'Building': '22', 'Room': '205'},
      officeHours: {
        DayOfWeek.MONDAY: '9:00 AM - 11:00 AM',
        DayOfWeek.WEDNESDAY: '1:00 PM - 3:00 PM'
      },
      yearOfBirth: 2001);
  print(instructor);
  instructor.officeHours = {
    DayOfWeek.WEDNESDAY: '9:00 AM - 11:00 AM',
    DayOfWeek.THURSDAY: '1:00 PM - 3:00 PM'
  };
  print("-" * 20);
  print(instructor);

  instructor.changeOfficeHours(DayOfWeek.WEDNESDAY, "10:00 AM - 11:00 AM");
  print("-" * 20);
  print(instructor);
}
