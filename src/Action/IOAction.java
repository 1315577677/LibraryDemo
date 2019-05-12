package Action;

import Entity.Book;
import Entity.Reader;
import com.dbconn.entity.DBBook;
import com.dbconn.entity.DBIO;
import Entity.Log;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class IOAction extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action.equals("borrow")){
            this.borrow(request, response);
        }
        else if(action.equals("getlog")){
            this.getlog(request, response);
        }
        else if(action.equals("return")){
            this.ReturnBook(request, response);
        }
        else if("readerborrow".equals(action)){
            this.readerborrow(request, response);
        }
        else if("returnbook".equals(action)){
            this.returnbook(request, response);
        }
        else if(action.equals("return1")){
            this.ReturnBook1(request, response);
        }
        else if(action.equals("ret")){
            this.ret(request, response);
        }
    }

    private void ret(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        request.getRequestDispatcher("/return.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void borrow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String next = request.getParameter("over");
        DBIO ioDao = new DBIO();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
        Date date = new Date();
        String time = sdf.format(date);
        String readerid = request.getParameter("readerid");
        String bookid = request.getParameter("bookid");
        int borrowday = Integer.parseInt(request.getParameter("borrowday"));
        ioDao.borrow(bookid, readerid, time, borrowday);
        if(next.equals("0"))
            request.getRequestDispatcher("/borrow.jsp").forward(request, response);
        else
            this.getlog(request,response);
    }

    protected void getlog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        DBIO ioDao = new DBIO();
        ArrayList<Log> loglist = ioDao.getLogList();
        HttpSession session = request.getSession();
        session.setAttribute("loglist", loglist);
        request.getRequestDispatcher("/IOLog.jsp").forward(request, response);
    }

    protected void ReturnBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        DBIO ioDao = new DBIO();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
        Date date = new Date();
        String Returntime = sdf.format(date);
        String bookid = request.getParameter("bookid");
        String readerId = request.getParameter("ReaderId");
        String borrowtime = request.getParameter("borrowtime");
        ioDao.ReturnBook(bookid, readerId, borrowtime, Returntime);
        this.GetBorrowListById(request,response);
    }
    protected void GetBorrowListById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String id = request.getParameter("ReaderId");
        DBIO ioDao = new DBIO();
        ArrayList<Log> loglist = ioDao.QueryBorrowNumByReaderid(id);
        HttpSession session = request.getSession();
        session.setAttribute("loglist", loglist);
        request.getRequestDispatcher("/borrowlist.jsp").forward(request,response);
    }
    protected void readerborrow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        DBIO ioDao = new DBIO();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
        Date date = new Date();
        String time = sdf.format(date);
        String readerid = request.getParameter("readerid");
        String bookid = request.getParameter("bookid");
        ioDao.borrow(bookid, readerid, time, 30);
        request.getRequestDispatcher("/ReaderBorrow.jsp").forward(request,response);
    }
    protected void returnbook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession reader =request.getSession();

        DBIO ioDao = new DBIO();
        String id =request.getParameter("readerid");
        ArrayList<Log> loglist = ioDao.QueryBorrowNumByReaderid(id);
        HttpSession session = request.getSession();
        session.setAttribute("loglist", loglist);
        request.getRequestDispatcher("/returnbooklist.jsp").forward(request,response);

    }
    protected void ReturnBook1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        DBIO ioDao = new DBIO();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
        Date date = new Date();
        String Returntime = sdf.format(date);
        String bookid = request.getParameter("bookid");
        String readerId = request.getParameter("ReaderId");
        String borrowtime = request.getParameter("borrowtime");
        ioDao.ReturnBook(bookid, readerId, borrowtime, Returntime);
        this.GetBorrowListById1(request,response);
    }
    protected void GetBorrowListById1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String id = request.getParameter("ReaderId");
        DBIO ioDao = new DBIO();
        ArrayList<Log> loglist = ioDao.QueryBorrowNumByReaderid(id);
        HttpSession session = request.getSession();
        session.setAttribute("loglist", loglist);
        request.getRequestDispatcher("/returnbooklist.jsp").forward(request,response);
    }



}
