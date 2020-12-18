package utils;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class HttpUtils {
	
    public static String request(String api) {
        HttpURLConnection httpURLConnection = null;
        int code = 0;
        try {
            URL url = new URL(api);
            httpURLConnection = (HttpURLConnection) url.openConnection();
            code = httpURLConnection.getResponseCode();
        } catch (Exception e) {
            return "##error£¬Á¬½ÓÒì³££¬Çë¼ì²éÍøÂç##";
        }
        if (code >= 200 && code < 300) {
            try (InputStreamReader inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
                 BufferedReader bufferedReader = new BufferedReader(inputStreamReader)) {
                StringBuilder stringBuilder = new StringBuilder();
                String line;
                while ((line = bufferedReader.readLine()) != null) {
                    stringBuilder.append(line);
                }
                return stringBuilder.toString();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "##error£¬´íÎó±àÂë##£º" + code;
    }

}
