package com.libmis.util;

import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;

public class MyArrayUtils extends ArrayUtils{
	
	public static boolean isEmpty(String[] array){
		if(array==null||array.length==0){
			return true;
		}
		if(ArrayUtils.isNotEmpty(array)){
			for(String s:array){
				if(StringUtils.isBlank(s))
					return true;
			}
		}
		return false;
	}
}
