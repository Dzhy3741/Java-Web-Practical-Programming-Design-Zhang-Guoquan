﻿package com.lh.bean;

public class StringUtil {
	private String money;		//转换之前的数字金额
	private String submoneyCN[]={"","拾","佰","仟"};									//表示数字位数的数组
	private String numberCNN[]={"零","壹","贰","叁","肆","伍","陆","柒","捌","玖"};	//大写数字的数组
	private String je="零壹贰叁肆伍陆柒捌玖";		//大写的数字（0-9）
	private String cdw="万仟佰拾亿仟佰拾万仟佰拾元角分";	//金额单位
	public StringUtil(){}		//默认的构造方法
	public void setMoney(String money){
		this.money=money;
	}
	public String getMoney(){
		return convert(this.money);
		
	}
	/**
	 * 转换数字金额为大写金额
	 * @return 返回转换后的大写金额
	 */
	public String convert(String money){
	  String formatCN="";	
	  int point=money.indexOf(".");				//判断字符串是否包含小数点
      if(point!=-1){
	    String money1=money.substring(0,point);	//小数点之前的部分
	    String money1_1=(new StringBuffer(money1).reverse()).toString();//字符串倒序
	    String money2=money.substring(point+1);	//小数点之后的部分
	    if(money2.length()<2){					//如果小数点后的部分少于两位，用"0"补齐
	    	if(money2.length()==0)
	    		money2="00";
	    	else
	    		money2+="0";
	    }
	    else									//如果小数点后的位数大于2位，则只前2位
	    	money2=money.substring(point+1,point+3);
	    int len = money1_1.length();			//字符串反转之后，小数点之前的字符位数
	    int pos=len-1;
	    String sigle="";
	    boolean allhavenum=false;
	    boolean havenum=false;
	    boolean mark=false;       				//设置一个开关变量，若当前数为"0"，将该值设为true；不为"0"时设为false
	    /**以下代码为读出小数点左面的部分*/
	    while(pos>=0){
		    sigle=money1_1.substring(pos,pos+1);//截取1位数字，比如数字1234.56,将左侧的字符串反转，值为4321，则截取的值为1
		   
		    /**读取“亿单元”的代码。
		     * 假设读取10024531042.34。
		     * 小数点左面反转后为：24013542001
		     * pos的初始值为10
		     * mark的初始值为false
		     * havenum的初始值为false
		     * */	    
		    if(pos>=8&&pos<12){ 
			    if(!sigle.equals("0")){      	 //如果当前值不为"0"
				    if(!mark){               	 //如果当前值的前一位数不为"0"
				    	formatCN+=numberCNN[Integer.parseInt(sigle)]+submoneyCN[pos%4];
				    }
				    else{                    	 //如果当前值不为"0"，但该值的前一位数为"0"
				    	if(allhavenum){        	 //如果在当前值之前有不为"0"的数字出现。该条件用来处理用户输入的如：0012.34的数值
				    		formatCN+="零";
				    	}
				    	formatCN+=numberCNN[Integer.parseInt(sigle)]+submoneyCN[pos%4];
				        mark=false;
				    }
				    havenum=true;
				    allhavenum=true;        	//变量allhavenum表示小数点左面的数中是否有不为"0"的数字；true表示有，false表示无
			    }
			    else{                      		//如果当前值为"0"
				    mark=true;
			    }
			    if(pos%4==0&&havenum){     		//如果当前数字为该单元的最后一位，并且该单元中有不为"0"的数字出现
			    	formatCN+="亿";
		    	    havenum=false;
			    }
		    }
		    /**读取“万单元”的代码*/	 		    
		    if(pos>=4&&pos<8){
    			if(!sigle.equals("0")){
				    if(!mark)
				    	formatCN+=numberCNN[Integer.parseInt(sigle)]+submoneyCN[pos%4];
	    			else{
	    				if(allhavenum){
	    					formatCN+="零";
	    				}
	    				formatCN+=numberCNN[Integer.parseInt(sigle)]+submoneyCN[pos%4];
			    		mark=false;
				    }
				    havenum=true;
				    allhavenum=true;
			    }
			    else{
    			    mark=true;
	    		}
		    	if(pos%4==0&&havenum){ 
		    		formatCN+="万";
				    havenum=false;
			    }
		    }
		    /**读取“个、十、百、千”的代码*/
		    if(pos>=0&&pos<4){
    			if(!sigle.equals("0")){        
    				if(!mark)
    					formatCN+=numberCNN[Integer.parseInt(sigle)]+submoneyCN[pos%4];
				    else{ 
				    	if(allhavenum){
				    		formatCN+="零";
				    	}
				    	formatCN+=numberCNN[Integer.parseInt(sigle)]+submoneyCN[pos%4];
					    mark=false;       
				    }
    				havenum=true;
    				allhavenum=true;
			    }
			    else{
    				mark=true;
	    		}
		    }
		    pos--;    		
	    }
	    /**碰到小数点时的读法*/	    
        if(allhavenum)        //如：00.34就不能读为:元3角4分.变量allhavenum表示小数点左面的内容中是否有数字出现
        	formatCN+="元";
        else                 //如果小数点左面的部分都为0如：00.34应读为：零元3角4分
        	formatCN="零元";
        /**以下代码为读出小数点右面的部分 */       
        if(money2.equals("00"))
        	formatCN+="整";
        else{
        	/**读出角,如120.34读为：1佰2拾元零3角4分；123.04读为：1佰2拾3元零4分*/
        	if(money2.startsWith("0")||(allhavenum&&money1.endsWith("0"))){ 
        		formatCN+="零";
	        }
        	if(!money2.startsWith("0")){
        		formatCN+=numberCNN[Integer.parseInt(money2.substring(0,1))]+"角";
	        }
        	//读出分，如：12.30读1拾2元3角零分
        	formatCN+=numberCNN[Integer.parseInt(money2.substring(1))]+"分";
        }
      } 
      else{
    	  formatCN="输入的格式不正确！格式：888.00";
      }
      return formatCN;
    }
}
