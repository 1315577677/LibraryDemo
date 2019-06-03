package Action;

import Entity.Book;
import com.dbconn.entity.DBBook;
import com.dbconn.entity.DBIO;
import Entity.Log;
import com.dbconn.entity.DBReader;
import Entity.Reader;
import server.Sendmail;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


public class ReaderAction extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if("QueryReaderById".equals(action)) {
            this.QueryReaderById(request, response);
        }
        if("QueryReaderUserNameById".equals(action)) {
            this.QueryReaderUserNameById(request, response);
        }
        else if ("GetBorrowListById".equals(action)){
            this.GetBorrowListById(request, response);
        }

        else if ("GetAllReader".equals(action)){
            this.GetAllReader(request, response);
        }
        else if("SetBlackList".equals(action)){
            this.SetBlackList(request, response);
        }
        else if("addreader".equals(action)){
            this.addreader(request, response);
        }
        else if("readerdelete".equals(action)){
            this.readerdelete(request,response);
        }
        else if("resiger".equals(action)){
            this.resiger(request,response);
        }

        else if("resigerreader".equals(action)){
            this.resiger(request,response);
        }
        else if("ser".equals(action)){
            this.ser(request,response);
        }
        else if("chapw".equals(action)){
            this.chapw(request,response);
        }
        else if("mailcheck".equals(action)){
            this.mailcheck(request,response);
        }
        else if("changepassword".equals(action)){
            this.changepassword(request,response);
        }

    }

    private void changepassword(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
       String password= request.getParameter("password");
       String UUID = request.getParameter("UUID");
       DBReader reader = new DBReader();
      if(reader.chengpassword(UUID,password)){
          response.setContentType("text/html;charset=utf-8");//设置编码格式，以防前端页面出现中文乱码
          PrintWriter printWriter = response.getWriter();//创建输出流
          printWriter.println("<h1>修改成功</h1>");
      }else{
          response.setContentType("text/html;charset=utf-8");//设置编码格式，以防前端页面出现中文乱码
          PrintWriter printWriter = response.getWriter();//创建输出流
          printWriter.println("<h1>修改失败</h1>");
      }


    }

    private void mailcheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
       String username = request.getParameter("username");
       String UUID = request.getParameter("UUID");
       DBReader check = new DBReader();
       Reader reader =new Reader();
       reader.setUsername(username);
       reader.setUUID(UUID);
        HttpSession session = request.getSession();
        session.setAttribute("check",reader);
       if(check.mailstatus(username,UUID)){
           request.getRequestDispatcher("changepassword.jsp").forward(request,response);
       }else{
           response.setContentType("text/html;charset=utf-8");//设置编码格式，以防前端页面出现中文乱码
           PrintWriter printWriter = response.getWriter();//创建输出流
           printWriter.println("<h1>请先激活你的账号</h1>");
       }

    }


    private void chapw(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String username = request.getParameter("username");
        String mail = request.getParameter("mail");
        DBReader readerdao = new DBReader();
        Reader reader = new Reader();
        if(null!=readerdao.checkmail(username,mail).getUUID()){
            Sendmail sendmail = new Sendmail();
            reader=readerdao.checkmail(username,mail);
            try {
                sendmail.Sendcheckmail(2,reader);
                response.setContentType("text/html;charset=utf-8");//设置编码格式，以防前端页面出现中文乱码
                PrintWriter printWriter = response.getWriter();//创建输出流
                printWriter.println("<h1>邮件已发出，请到邮箱修改您的密码</h1>");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else{
            request.getRequestDispatcher("error.jsp").forward(request,response);
        }


    }

    protected void QueryReaderById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String readerid = request.getParameter("readerid");
        DBReader readerDao = new DBReader();
        Reader reader = readerDao.QueryReaderById(readerid);
        String stauts = (reader.getStatus() == 1) ? "正常" : "异常";
        String callback = reader.getName() + "||" + reader.getGrade() + "系" + reader.getClassnum() + "班||" + stauts + "||" + reader.getBorrow();
        PrintWriter out = response.getWriter();
        out.write(callback);

    }
    protected void QueryReaderUserNameById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String readerid = request.getParameter("id");
        DBReader readerDao = new DBReader();
        PrintWriter out = response.getWriter();
        if(readerDao.isin(readerid)){
            out.write("true");
        }else {
            out.write("false");
        }
    }


    protected void GetBorrowListById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String id = request.getParameter("readerid");
        DBIO ioDao = new DBIO();
        ArrayList<Log> loglist = ioDao.QueryBorrowNumByReaderid(id);
        HttpSession session = request.getSession();
        session.setAttribute("loglist", loglist);
        request.getRequestDispatcher("/borrowlist.jsp").forward(request,response);
    }

    protected void GetAllReader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        DBReader readerDao = new DBReader();
        ArrayList<Reader> readerlist = readerDao.GetAllReader();
        HttpSession session = request.getSession();
        session.setAttribute("readerlist", readerlist);
        request.getRequestDispatcher("/ReaderList.jsp").forward(request, response);
    }

    protected void SetBlackList (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String username = request.getParameter("id");
        String edit = request.getParameter("edit");
        DBReader readerDao = new DBReader();
        if(edit.equals("设置为正常")){
            readerDao.SetBlackList(username, true);
        }
        else{
            readerDao.SetBlackList(username, false);
        }
        this.GetAllReader(request, response);
    }
    private void addreader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String next = request.getParameter("over");
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

            bdao.addreader(reader);
        if(next.equals("0"))
            request.getRequestDispatcher("/AddReader.jsp").forward(request, response);
        else
            this.GetAllReader(request,response);
    }
    private void readerdelete(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
        DBIO io =new DBIO();
        if(io.checkUserById(request.getParameter("id"))){
            DBReader reader = new DBReader();
            reader.DeleteById(request.getParameter("id"));
        }else{
            response.getWriter().println("该学生有书未归还无法删除");
        }


        this.GetAllReader(request,response);
    }
    private void resiger(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
        request.getRequestDispatcher("/ReaderResiger.jsp").forward(request,response);
    }

    private void ser(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
        String bookname = request.getParameter("bookname");
        String publisher = request.getParameter("publisher");
        DBBook bdao = new DBBook();
        ArrayList<Book> addbooklist = bdao.serbook(bookname);
        HttpSession session = request.getSession();
        session.setAttribute("readerbooklist", addbooklist);
        request.getRequestDispatcher("/rbooklist.jsp").forward(request,response);
    }
    protected void GetReaderBorrowListById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String id = request.getParameter("readerid");
        DBIO ioDao = new DBIO();
        ArrayList<Log> loglist = ioDao.QueryBorrowNumByReaderid(id);
        HttpSession session = request.getSession();
        session.setAttribute("loglist", loglist);
        request.getRequestDispatcher("/borrowlist.jsp").forward(request,response);
    }




}
