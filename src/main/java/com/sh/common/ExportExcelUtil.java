package com.sh.common;

import org.apache.poi.hssf.usermodel.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;

/**
 * Created by zhaopin on 16/8/10.
 */
public class ExportExcelUtil {

    public static String export(String sheetName,
                              String[] headers,
                              String[] columns,
                              List<LinkedHashMap<String, Object>> results,
                              HttpServletResponse response,
                              String fileName) throws IOException {

        if(headers.length != columns.length)
            return null;
        HSSFWorkbook workbook = new HSSFWorkbook();
        HSSFSheet sheet = workbook.createSheet(sheetName);
        HSSFCellStyle style = workbook.createCellStyle();
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        style.setAlignment(HSSFCellStyle.VERTICAL_CENTER);
        HSSFRow titleRow = sheet.createRow(0);
        HSSFCell cell = null;
        for(int i = 0; i < columns.length; i ++) {
            cell = titleRow.createCell(i);
            cell.setCellValue(headers[i]);
            cell.setCellStyle(style);
        }
        HSSFRow row = null;
        for(int i = 0; i < results.size(); i ++) {
            row = sheet.createRow(i + 1);
            for(int j = 0; j < columns.length; j ++) {
                cell = row.createCell(j);
                cell.setCellValue(results.get(i).getOrDefault(columns[j], "").toString());
            }
        }
        response.setContentType("application/x-msdownload");
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName + uuid + ".xls");
        OutputStream bos = response.getOutputStream();
        workbook.write(bos);
        bos.flush();
        bos.close();
        return fileName + uuid + ".xls";
    }

}
