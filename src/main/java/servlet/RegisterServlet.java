package servlet;

import DAO.UserDAOImpl;
import DB.DBConnect;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLOutput;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try{
            String name = req.getParameter("fname");
            String email = req.getParameter("email");
            String phno = req.getParameter("phno");
            String password = req.getParameter("password");
            String check = req.getParameter("check");

//            System.out.println(name +""+email+""+password+""+check);
            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhno(phno);
            us.setPassword(password);

            HttpSession session =req.getSession();

            if(check!=null)
            {
                UserDAOImpl dao= new UserDAOImpl(DBConnect.getConn());
                boolean f= dao.userRegister(us);
                if (f)
                {
//                    System.out.println("User register success");
                    session.setAttribute("succMsg","User register successfully...");
                    resp.sendRedirect("register.jsp");
                }else {
//                    System.out.println("register fail");
                    session.setAttribute("failedMsg","register fail");
                    resp.sendRedirect("register.jsp");
                }
            }else{
//                System.out.println("please check agree term");
                session.setAttribute("failedMsg","please check agree term");
                resp.sendRedirect("register.jsp");
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
