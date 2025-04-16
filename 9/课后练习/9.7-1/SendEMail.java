import org.apache.commons.mail.*;

public class SendEMail
{
    public static void main ( String[] arg ) throws Exception
    {
        SimpleEmail email = new SimpleEmail ( );

        // smtp host
        email.setHostName ( "smtp.163.com" );
        // 登陆邮件服务器的用户名和密码
        email.setAuthentication ( "zieckey", "123456" );
        // 接收人
        email.addTo ( "zieckey@yahoo.com.cn", "Zieckey" );
        // 发送人
        email.setFrom ( "zieckey@163.com", "Me" );
        // 标题
        email.setSubject ( "Test message" );
        // 邮件内容
        email.setMsg ( "This is a simple test of commons-email" );
        // 发送
        email.send ( );
        
        System.out.println ( "Send email successful!" );

    }
}