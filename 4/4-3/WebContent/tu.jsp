<%-- ͨ��contentType����ָ����Ӧ������ͼƬ --%>
<%@ page contentType="image/jpeg" language="java"%>
<%@ page import="java.awt.image.*,javax.imageio.*,java.io.*,java.awt.*"%>
<%
//����BufferedImage����
BufferedImage image = new BufferedImage(340 , 
	160, BufferedImage.TYPE_INT_RGB);
//��Image�����ȡGraphics����
Graphics g = image.getGraphics();
//ʹ��Graphics��ͼ��������ͼ�񽫻������image������
g.fillRect(0,0,400,400);
//������ɫ����
g.setColor(new Color(255,0,0));
//����һ�λ�
g.fillArc(20, 20, 100,100, 30, 120);
//������ɫ����
g.setColor(new Color(0 , 255, 0));
//����һ�λ�
g.fillArc(20, 20, 100,100, 150, 120);
//������ɫ����
g.setColor(new Color(0 , 0, 255));
//����һ�λ�
g.fillArc(20, 20, 100,100, 270, 120);
//������ɫ����
g.setColor(new Color(0,0,0));
g.setFont(new Font("Arial Black", Font.PLAIN, 16));
//���������ַ���
g.dispose();
//��ͼ�������ҳ�����Ӧ
ImageIO.write(image , "jpg" , response.getOutputStream());
%>
