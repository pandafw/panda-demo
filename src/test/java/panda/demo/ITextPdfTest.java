package panda.demo;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.junit.Test;

import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfWriter;

public class ITextPdfTest {

	@Test
	public void testJapan() throws Exception {
		File FN = new File("out/test-classes/testJapan.pdf");
		BufferedOutputStream br = new BufferedOutputStream(new FileOutputStream(FN, false));
		Document doc = new Document(PageSize.A4.rotate());
		PdfWriter pw = PdfWriter.getInstance(doc, br);
		//
		Font font10 = new Font(BaseFont.createFont("HeiseiKakuGo-W5", "UniJIS-UCS2-H", BaseFont.NOT_EMBEDDED), 10,
			Font.BOLD);
		doc.open();
		font10.setColor(255, 0, 0);
		Paragraph prg1 = new Paragraph("PDFファイル生成テスト", font10);
		doc.add(prg1);

		Paragraph prg2 = new Paragraph("PDFファイル生成テスト2");
		doc.add(prg2);
		
		//
		doc.close();
		pw.close();
		br.close();
	}
}
