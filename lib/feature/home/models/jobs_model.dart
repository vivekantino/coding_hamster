// To parse this JSON data, do
//
//     final jobsModel = jobsModelFromJson(jsonString);

import 'dart:convert';

JobsModel jobsModelFromJson(String str) => JobsModel.fromJson(json.decode(str));

String jobsModelToJson(JobsModel data) => json.encode(data.toJson());

class JobsModel {
  bool? success;
  int? statusCode;
  List<JobsModelDatum>? data;
  String? message;

  JobsModel({
    this.success,
    this.statusCode,
    this.data,
    this.message,
  });

  factory JobsModel.fromJson(Map<String, dynamic> json) => JobsModel(
        success: json["success"],
        statusCode: json["status_code"],
        data: json["data"] == null
            ? []
            : List<JobsModelDatum>.from(
                json["data"]!.map((x) => JobsModelDatum.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "status_code": statusCode,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class JobsModelDatum {
  int? id;
  DateTime? createdOn;
  DateTime? modifiedAt;
  String? company;
  int? vacancies;
  String? employeeType;
  String? location;
  String? salaryRange;
  String? qualification;
  String? contactPerson;
  String? phone;
  String? email;
  String? jobTitle;
  String? status;
  DateTime? expiryDate;
  String? experience;
  String? description;
  dynamic category;

  JobsModelDatum({
    this.id,
    this.createdOn,
    this.modifiedAt,
    this.company,
    this.vacancies,
    this.employeeType,
    this.location,
    this.salaryRange,
    this.qualification,
    this.contactPerson,
    this.phone,
    this.email,
    this.jobTitle,
    this.status,
    this.expiryDate,
    this.experience,
    this.description,
    this.category,
  });

  factory JobsModelDatum.fromJson(Map<String, dynamic> json) => JobsModelDatum(
        id: json["id"],
        createdOn: json["created_on"] == null
            ? null
            : DateTime.parse(json["created_on"]),
        modifiedAt: json["modified_at"] == null
            ? null
            : DateTime.parse(json["modified_at"]),
        company: json["company"],
        vacancies: json["vacancies"],
        employeeType: json["employee_type"],
        location: json["location"],
        salaryRange: json["salary_range"],
        qualification: json["qualification"],
        contactPerson: json["contact_person"],
        phone: json["phone"],
        email: json["email"],
        jobTitle: json["job_title"],
        status: json["status"],
        expiryDate: json["expiry_date"] == null
            ? null
            : DateTime.parse(json["expiry_date"]),
        experience: json["experience"],
        description: json["description"],
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_on": createdOn?.toIso8601String(),
        "modified_at": modifiedAt?.toIso8601String(),
        "company": company,
        "vacancies": vacancies,
        "employee_type": employeeType,
        "location": location,
        "salary_range": salaryRange,
        "qualification": qualification,
        "contact_person": contactPerson,
        "phone": phone,
        "email": email,
        "job_title": jobTitle,
        "status": status,
        "expiry_date":
            "${expiryDate!.year.toString().padLeft(4, '0')}-${expiryDate!.month.toString().padLeft(2, '0')}-${expiryDate!.day.toString().padLeft(2, '0')}",
        "experience": experience,
        "description": description,
        "category": category,
      };
}
