package com.tuan.test;

import java.text.DecimalFormat;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		DecimalFormat df= new DecimalFormat("00");
		
		System.out.println(df.format(8));

	}

}
