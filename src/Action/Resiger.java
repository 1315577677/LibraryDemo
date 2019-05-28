package Action;

import Entity.Reader;
import com.dbconn.entity.DBReader;
import com.dbconn.tool.Rand;
import server.Sendmail;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "Resiger")
public class Resiger extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        if("resiger".equals(request.getParameter("action"))){
            this.resiger(request,response);
        }
        else if("login".equals(request.getParameter("action"))){
            this.login(request,response);

        }else if("mailcheck".equals(request.getParameter("action"))){
            this.mailcheck(request,response);

        }

        }
    private void resiger(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DBReader bdao = new DBReader();
        Reader reader = new Reader();

        reader.setUsername(request.getParameter("username"));

        reader.setPassword(request.getParameter("password"));

        reader.setName(request.getParameter("name"));

        reader.setSex(request.getParameter("sex"));

        reader.setMail(request.getParameter("mail"));

        reader.setTel(request.getParameter("tel"));

        reader.setGrade(request.getParameter("grade"));

        reader.setClassnum(request.getParameter("classnum"));

        reader.setUUID(Rand.generateShortUUID());
        bdao.addreader(reader);
        try {
            Sendmail smt=new Sendmail(reader);
        } catch (Exception e) {
            request.getRequestDispatcher("./error.jsp").forward(request,response);
        }
        request.getRequestDispatcher("./load.jsp").forward(request,response);
    }
    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DBReader reader = new DBReader();
        if(reader.login(request.getParameter("username"),request.getParameter("password"))!=null){
            request.getRequestDispatcher("./ReadMain.jsp").forward(request,response);
        }
    }
    private void  mailcheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DBReader dr = new DBReader();
        if(dr.mailstatus(request.getParameter("username"),request.getParameter("UUID"))){
            request.getRequestDispatcher("mailcheck.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("error.jsp").forward(request,response);
        };

    }
}

