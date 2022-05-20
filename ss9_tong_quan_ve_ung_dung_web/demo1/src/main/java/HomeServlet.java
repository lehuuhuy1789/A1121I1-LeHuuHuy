import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.SchemaOutputResolver;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HomeServlet",urlPatterns = {"/home","/trang-chu"})
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("--------------------------------");
        System.out.println("doPost chay");
        System.out.println("click vào button trong thẻ form với method =post");
        int n1 = Integer.parseInt(request.getParameter("num1"));
        int n2 = Integer.parseInt(request.getParameter("num2"));
        int s = n1+n2;
        // cách 1
//        PrintWriter printWriter = response.getWriter();
//        printWriter.print("<h1> Result: "+s+"</h1>");
        // cách 2
        request.setAttribute("sum",s);
        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("--------------------------------");
        System.out.println("doGet chay");
        System.out.println("gõ trên thanh trình duyệt");
        System.out.println("click vào đường link");
        System.out.println("click vào button trong thẻ form và với method =get");
    }

    @Override
    public void init() throws ServletException {
        System.out.println("chạy 1 lần duy nhất khi khởi tạo servlet");
    }

    @Override
    public void destroy() {
        System.out.println("chạy khi servlet bị hủy");
    }
}
