package com.hengdelian.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.*;

public class ExportToExcel {
	public List<String[]> SelectSupData(String supname) throws Exception {
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		System.out.println("select * from warehouseinfo where wsupname='" + supname+"'");
		ResultSet rs = cs.executeQuery("select * from warehouseinfo where wsupname='" + supname+"'");
		List<String[]> total = new ArrayList<String[]>();
		while (rs.next()) {
			String date = rs.getString(2);
			String type = rs.getString(3);
			String spec = rs.getString(4);
			int num = rs.getInt(5);
			Double aweight = rs.getDouble(7);
			Double sprice = rs.getDouble(8);
			Double aprice = rs.getDouble(9);
			total.add(new String[] { date, type, spec, String.valueOf(num), String.valueOf(aweight),
					String.valueOf(sprice), String.valueOf(aprice) });
		}
		return total;
	}

	@SuppressWarnings("resource")
	public void InsertExcel(String supname) throws Exception {
		String[] cellTitle = { "日期", "品种", "规格", "数量", "总重", "单价", "总价" };
	    String basePath = "/Users/administrater/Desktop/";
	    //文件名
	    String exportFileName = "对账单_"+supname+".xlsx";
		ExportToExcel exportToExcel = new ExportToExcel();
		List<String[]> data = exportToExcel.SelectSupData(supname);
		XSSFWorkbook workBook = null;
		workBook = new XSSFWorkbook();
		XSSFSheet sheet = workBook.createSheet();
		XSSFRow titleRow = sheet.createRow(0);
		// 创建表格标题行 第一行
		for (int i = 0; i < cellTitle.length; i++) {
			titleRow.createCell(i).setCellValue(cellTitle[i]);
		}
		//插入需导出的数据
	    for(int i=0;i<data.size();i++){
	        XSSFRow row = sheet.createRow(i+1);
//	        row.createCell(0).setCellValue(i+1);
	        row.createCell(0).setCellValue(data.get(i)[0]);
	        row.createCell(1).setCellValue(data.get(i)[1]);
	        row.createCell(2).setCellValue(data.get(i)[2]);
	        row.createCell(3).setCellValue(data.get(i)[3]);
	        row.createCell(4).setCellValue(data.get(i)[4]);
	        row.createCell(5).setCellValue(data.get(i)[5]);
	        row.createCell(6).setCellValue(data.get(i)[6]);
	    }
	    
	    File  file = new File(basePath+exportFileName);
	    FileOutputStream outStream = new FileOutputStream(file);
	    try {
//			res.reset();
//			res.setHeader("Content-Disposition", "attachment; filename="+supname+".xls");//要保存的文件名
//			res.setContentType("application/octet-stream; charset=utf-8");
			workBook.write(outStream);
			outStream.flush();
		} finally {
			if (outStream != null) {
				outStream.close();
			}
		}
	}
	
}
