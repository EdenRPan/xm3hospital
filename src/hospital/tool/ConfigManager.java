package hospital.tool;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ConfigManager {
	private static Properties properties;
	static {
		InputStream inputStream;
		inputStream = ConfigManager.class.getClassLoader().getResourceAsStream("DataBase.properties");
		if (inputStream == null) throw new RuntimeException("搜索配置文件超时");
		properties = new Properties();
		try {
			properties.load(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("加载配置文件失败");
		}finally {
			try {
				inputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("关闭文件流失败");
			}
		}
	}

	public static String getProperties(String key){
		return properties.getProperty(key);
	}
}
