import org.apache.commons.mail.*;

public class SendEMail
{
    public static void main ( String[] arg ) throws Exception
    {
        SimpleEmail email = new SimpleEmail ( );

        // smtp host
        email.setHostName ( "smtp.163.com" );
        // ��½�ʼ����������û���������
        email.setAuthentication ( "zieckey", "123456" );
        // ������
        email.addTo ( "zieckey@yahoo.com.cn", "Zieckey" );
        // ������
        email.setFrom ( "zieckey@163.com", "Me" );
        // ����
        email.setSubject ( "Test message" );
        // �ʼ�����
        email.setMsg ( "This is a simple test of commons-email" );
        // ����
        email.send ( );
        
        System.out.println ( "Send email successful!" );

    }
}