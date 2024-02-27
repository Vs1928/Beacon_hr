package com.test.excel;

import java.util.List;
import java.util.Map;
import com.test.entity.Empdetails;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

public class ExcelUserListReportView<Empdetails> extends AbstractXlsView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		 response.setHeader("Content-disposition", "attachment; filename=\"emp_list.xls\"");
		  
		  @SuppressWarnings("unchecked")
		  List<Empdetails> list = (List<Empdetails>) model.get("emplist");
		  
		  Sheet sheet = workbook.createSheet("Emp List");
		  
		  Row header = sheet.createRow(0);
		  header.createCell(0).setCellValue("Company Name");
		  header.createCell(1).setCellValue("Employee Code");
		  header.createCell(2).setCellValue("Employee Name");
		  header.createCell(3).setCellValue("Date of Birth");
		  
		  int rowNum = 1;
		  
		  for(Empdetails emp : list){
		   Row row = sheet.createRow(rowNum++);
		   row.createCell(0).setCellValue(((com.test.entity.Empdetails) emp).getCompname());
		   row.createCell(1).setCellValue(((com.test.entity.Empdetails) emp).getEmpcode());
		   row.createCell(2).setCellValue(((com.test.entity.Empdetails) emp).getEmpname());
		   row.createCell(3).setCellValue(((com.test.entity.Empdetails) emp).getDob());
		  }
		
	}

}
