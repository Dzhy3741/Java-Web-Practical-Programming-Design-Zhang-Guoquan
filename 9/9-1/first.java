import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Sender {
	private String receiver = "hui.zz@163.com";
	private String subject = "Hello! My Friend! Sending best wishes!";
	private String cc = "hui.zz@hytc.edu.cn"; // (Blind) Carbon Copy
	private String mailContent = "Hello! Frodo! peril is approaching! go to Minas Tirith now@!";
	private Session session;// session û�����࣬���Ա�����,����javax.mail��
	private Message msg;// �����ݣ�ʵ�ֽӿ�part��������MimeMessage������javax.mail

	public void sendNow() {
		Properties props = new Properties();// dictionary-hashtable-properties
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", "smtp.163.com");// û�п�������������ܲ�����
										// �Ǻ�����������ʱ�������smtp server
		session = Session.getDefaultInstance(props, new Authenticator(){
			public PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication("courses4public", "hytczzh");
			}
		});
		session.setDebug(true); // ������ԣ���˿�����getDebug ȡ������Ϣ,��Ϣ������ˡ��ߺ�
		try {
			msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress("courses4public@163.com"));
			InternetAddress toAddress = new InternetAddress(receiver);// �ռ���
			msg.addRecipient(Message.RecipientType.TO, toAddress);// ���ռ���
			InternetAddress ccAddress = new InternetAddress(cc);// �ռ���
			msg.addRecipient(Message.RecipientType.CC, ccAddress);// ���ռ���
			msg.setSubject(subject);
			msg.setText(mailContent);
			Transport.send(msg);
		} catch (MessagingException ex) {
			while ((ex = (MessagingException) ex.getNextException()) != null)
				ex.printStackTrace();
		}
	} // sendNow end
	
	public static void main(String[] args){
		new Sender().sendNow();
	}
}
