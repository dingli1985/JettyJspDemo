package org.alex.zxing;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;

public class ZxingGenerator {

	public static void main(String[] args) {
		try {

			String content = "姓名:丁立；手机号码:13764752396;性别:男;婚姻状况:未婚";
			String path = "/Users/alex/Downloads";

			MultiFormatWriter multiFormatWriter = new MultiFormatWriter();

			Map hints = new HashMap();
			hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
			BitMatrix bitMatrix = multiFormatWriter.encode(content, BarcodeFormat.QR_CODE, 400, 400, hints);
			File file1 = new File(path, "info.jpg");
			MatrixToImageWriter.writeToFile(bitMatrix, "jpg", file1);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
