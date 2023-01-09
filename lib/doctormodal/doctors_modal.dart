class DoctorModal {
   String? name;
  String? speciality;
  double? average;
  int? reviews;
  String? Image;
  DoctorModal({
   required this.name,required this.speciality,required this.average,required this.reviews,required this.Image});
}

List<DoctorModal> doctos = [

DoctorModal(average: 4.0, name: 'Dr.Iqbal Jadoon', reviews: 195, speciality: 'Heart Specialist', Image: 'assets/doctor_1.jpg'),
DoctorModal(average: 2.0, name: 'Dr.Anam Munier', reviews: 95, speciality: 'Brain Specialist', Image: 'assets/doctor_3.jpg'),
DoctorModal(average: 3.1, name: 'Dr.Mustaq', reviews: 156, speciality: 'Eyes Specialist', Image: 'assets/doctor_2.jpg'),

];
