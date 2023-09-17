# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Inserting data into the users table
User.create([
    { name: 'John Doe', email: 'john@example.com' },
    { name: 'Alice Smith', email: 'alice@example.com' },
    { name: 'Bob Johnson', email: 'bob@example.com' },
    { name: 'Eva Davis', email: 'eva@example.com' },
    { name: 'Michael Wilson', email: 'michael@example.com' }
  ])
  
  # Inserting data into the students table
  Student.create([
    { user_id: 1, date_of_birth: '1995-05-15' },
    { user_id: 2, date_of_birth: '1997-08-23' },
    { user_id: 3, date_of_birth: '1998-04-10' },
    { user_id: 4, date_of_birth: '1996-11-30' },
    { user_id: 5, date_of_birth: '1999-02-18' }
  ])
  
  # Inserting data into the courses table
  Course.create([
    { name: 'Introduction to Programming', description: 'Learn the basics of programming.' },
    { name: 'Web Development Fundamentals', description: 'Build web applications from scratch.' },
    { name: 'Database Design and Management', description: 'Master the art of database management.' },
    { name: 'Advanced Algorithms', description: 'Explore complex algorithms and data structures.' },
    { name: 'Machine Learning 101', description: 'Dive into the world of machine learning.' }
  ])
  
  # Inserting data into the enrollments table
  Enrollment.create([
    { user_id: 1, student_id: 1, course_id: 1 },
    { user_id: 2, student_id: 2, course_id: 2 },
    { user_id: 3, student_id: 3, course_id: 3 },
    { user_id: 4, student_id: 4, course_id: 4 },
    { user_id: 5, student_id: 5, course_id: 5 }
  ])
  
  # Inserting data into the teachers table
  Teacher.create([
    { user_id: 6, qualification: 'Ph.D. in Computer Science' },
    { user_id: 7, qualification: 'Master of Web Development' },
    { user_id: 8, qualification: 'Ph.D. in Database Management' },
    { user_id: 9, qualification: 'Ph.D. in Algorithms' },
    { user_id: 10, qualification: 'Machine Learning Expert' }
  ])
  
  # Inserting data into the assignments table
  Assignment.create([
    { title: 'Homework 1', description: 'Complete exercises 1-5', course_id: 1 },
    { title: 'Web Project', description: 'Build a web application', course_id: 2 },
    { title: 'Database Project', description: 'Design a database system', course_id: 3 },
    { title: 'Algorithm Challenge', description: 'Solve complex problems', course_id: 4 },
    { title: 'ML Project', description: 'Implement a machine learning model', course_id: 5 }
  ])
  
  # Inserting data into the grades table
  Grade.create([
    { score: 95, student_id: 1, assignment_id: 1 },
    { score: 88, student_id: 2, assignment_id: 2 },
    { score: 92, student_id: 3, assignment_id: 3 },
    { score: 87, student_id: 4, assignment_id: 4 },
    { score: 90, student_id: 5, assignment_id: 5 }
  ])
  
  # Inserting data into the attendance table
  Attendance.create([
    { date: '2023-09-10', student_id: 1, course_id: 1 },
    { date: '2023-09-11', student_id: 2, course_id: 2 },
    { date: '2023-09-12', student_id: 3, course_id: 3 },
    { date: '2023-09-13', student_id: 4, course_id: 4 },
    { date: '2023-09-14', student_id: 5, course_id: 5 }
  ])
  
  # Inserting data into the announcements table
  Announcement.create([
    { title: 'Welcome to the Course', content: 'Get ready to learn!', course_id: 1 },
    { title: 'Upcoming Assignment', content: 'Due next week', course_id: 2 },
    { title: 'Database Workshop', content: 'Join us on Friday', course_id: 3 },
    { title: 'Algorithm Seminar', content: "Don't miss it!", course_id: 4 },
    { title: 'ML Conference', content: 'Register now', course_id: 5 }
  ])
  
  # Inserting data into the materials table
  Material.create([
    { title: 'Lecture Slides', file_url: 'https://example.com/slides.pdf', course_id: 1 },
    { title: 'Project Guidelines', file_url: 'https://example.com/project.pdf', course_id: 2 },
    { title: 'Database Schema', file_url: 'https://example.com/schema.pdf', course_id: 3 },
    { title: 'Algorithm Resources', file_url: 'https://example.com/resources.pdf', course_id: 4 },
    { title: 'ML Dataset', file_url: 'https://example.com/dataset.csv', course_id: 5 }
  ])
  

#Models details
# rails generate model User name:string email:string
# rails generate model Student user:references date_of_birth:date
# rails generate model Course name:string description:text
# rails generate model Enrollment user:references student:references course:references
# rails generate model Teacher user:references qualification:string
# rails generate model Assignment title:string description:text course:references
# rails generate model Grade score:integer student:references assignment:references
# rails generate model Attendance date:date student:references course:references
# rails generate model Announcement title:string content:text course:references
# rails generate model Material title:string file_url:string course:references



  #for accidental delete of migration
# rails generate migration CreateUsers name:string email:string
# rails generate migration CreateStudents user:references date_of_birth:date
# rails generate migration CreateCourses name:string description:text
# rails generate migration CreateEnrollments user:references student:references course:references
# rails generate migration CreateTeachers user:references qualification:string
# rails generate migration CreateAssignments title:string description:text course:references
# rails generate migration CreateGrades score:integer student:references assignment:references
# rails generate migration CreateAttendances date:date student:references course:references
# rails generate migration CreateAnnouncements title:string content:text course:references
# rails generate migration CreateMaterials title:string file_url:string course:references

