import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentServlet",urlPatterns = "/student")
public class StudentServlet extends HttpServlet {
    public static List<Student> studentList = new ArrayList<>();
    public static List<ClassCG> classCGList = new ArrayList<>();
    @Override
    public void init() throws ServletException {
        studentList.add(new Student(1, "tuấn", true, "12/12/2022", 9, "tuanvn", 1, "chanhtv235@gmial.com"));
        studentList.add(new Student(2, "trâm", false, "12/12/2022", 8, "tram", 2, "chanhtv235@gmial.com"));
        studentList.add(new Student(3, "lịch", true, "12/12/2022", 7, "lichhn", 2, "chanhtv235@gmial.com"));
        studentList.add(new Student(4, "hải", true, "12/12/2022", 6, "haitt", 3, "chanhtv235@gmial.com"));
        studentList.add(new Student(5, "chánh", true, "12/12/2022", 4, "chanhtv", 1, "chanhtv235@gmial.com"));

        // list class
        classCGList.add(new ClassCG(1,"A1121I1"));
        classCGList.add(new ClassCG(2,"A1221I1"));
        classCGList.add(new ClassCG(3,"A1021I1"));

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("studentList", studentList);
        request.setAttribute("classCGList", classCGList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("student/list.jsp");
        dispatcher.forward(request,response);

    }
}
