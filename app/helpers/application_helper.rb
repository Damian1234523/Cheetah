module ApplicationHelper
  def init_bread
    add_breadcrumb "Universities index", :universities_path

    if params[:controller] == "universities" && params[:action] == "show"
      add_breadcrumb @university.name, @university
    end

    if params[:controller] == "courses"
      un = University.find(@course.university_id)
      add_breadcrumb un.name, university_path(un)
      add_breadcrumb @course.name, university_course_path(un, @course)
    end

    if params[:controller] == "lecturers"
      co = Course.find(@lecturer.course_id)
      un = University.find(co.university_id)
      add_breadcrumb un.name, university_path(un)
      add_breadcrumb co.name, university_course_path(un,co)
      add_breadcrumb (@lecturer.title + " " + @lecturer.name + " " + @lecturer.lastname), university_course_lecturer_path(un, co, @lecturer)
    end

    if params[:controller] == "exams"
      le = Lecturer.find( @exam.lecturer_id)
      co = Course.find( le.course_id)
      un = University.find( co.university_id)
      add_breadcrumb un.name, university_path(un)
      add_breadcrumb co.name, university_course_path(un,co)
      add_breadcrumb (le.title + " " + le.name + " " + le.lastname), university_course_lecturer_path(un, co, le)
      add_breadcrumb @exam.name, university_course_lecturer_exams_path(un, co, le, @exam)
    end

  end
end
