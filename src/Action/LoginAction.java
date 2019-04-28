package Action;

import Entity.Reader;
import com.dbconn.entity.DBReader;
import com.dbconn.entity.DBUser;
import Entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginAction extends HttpServlet {
    DBReader rdao = new DBReader();
    DBUser udao = new DBUser();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        if (action.equals("login")) {
            this.login(request, response);
        }
        else if(action.equals("login1")){
            this.login1(request,response);

        }
        else if(action.equals("logout")){
            this.logout(request, response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = null;
        String password = null;
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        username = request.getParameter("username");
        password = request.getParameter("password");
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        String result = udao.login(user);
        if(result.equals("true")){
            session.setAttribute("adminname", user.getName());
            request.getRequestDispatcher("/main.jsp").forward(request, response);
        }
        else{
            out.write(result);
        }
    }
    private void login1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = null;
        String password = null;
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        username = request.getParameter("username");
        password = request.getParameter("password");
        Reader reader = new Reader();
        reader=rdao.login(username,password);
        if(reader!=null){
            session.setAttribute("reader",reader );
            request.getRequestDispatcher("/nav.jsp").forward(request, response);
        }
        else{
            out.write("false");
        }
    }

    private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(1);
        session.setAttribute("logout", "1");
        response.sendRedirect("index.jsp");
    }

}