package server;

import Entity.Reader;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class Sendmail {


    public Sendmail(Reader reader)  throws Exception {

        Properties prop = new Properties();
        prop.setProperty("mail.host", "smtp.qq.com");
        prop.setProperty("mail.transport.protocol", "smtp");
        prop.setProperty("mail.smtp.auth", "true");
        //使用JavaMail发送邮件的5个步骤
        //1、创建session
        Session session = Session.getInstance(prop);

        //开启Session的debug模式，这样就可以查看到程序发送Email的运行状态
        session.setDebug(true);
        //2、通过session得到transport对象
        Transport ts = session.getTransport();
        //3、使用邮箱的用户名和密码连上邮件服务器，发送邮件时，发件人需要提交邮箱的用户名和密码给smtp服务器，用户名和密码都通过验证之后才能够正常发送邮件给收件人。
        ts.connect("smtp.qq.com", "1315577677@qq.com", "mpofwtqaqxjtbacf");
        //4、创建邮件
        Message message = createSimpleMail(session,reader);
        //5、发送邮件
        ts.sendMessage(message, message.getAllRecipients());
        ts.close();
    }
    public static MimeMessage createSimpleMail(Session session, Reader reader)
            throws Exception {
        //创建邮件对象
        MimeMessage message = new MimeMessage(session);
        //指明邮件的发件人
        message.setFrom(new InternetAddress("1315577677@qq.com"));
        //指明邮件的收件人，现在发件人和收件人是一样的，那就是自己给自己发
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(reader.getMail()));
        //邮件的标题
        message.setSubject("CDUESTC在线借还图书系统");
        //邮件的文本内容
        message.setContent("您好"+reader.getName()+"：请点击以下链接激活您的账户，如不是本人操作请忽略<br/><a href='http://localhost:8080/Library_master_war_exploded/Resiger?action=mailcheck&username="+reader.getUsername()+"&UUID="+reader.getUUID()+"'>http://localhost:8080/Library_master_war_exploded/Resiger?action=mailcheck&username="+reader.getUsername()+"&UUID="+reader.getUUID()+"</a>", "text/html;charset=UTF-8");
        //返回创建好的邮件对象
        return message;
    }
}