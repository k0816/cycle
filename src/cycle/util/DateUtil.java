package cycle.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	/**
	 * 現在時刻取得メソッド
	 *
	 * @return String
	 */
	public String getDate() {
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

		return simpleDateFormat.format(date);
	}

	public String getDateDay() {
		Date day = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yy/MM/dd");

		return sdf.format(day);
	}

 }

