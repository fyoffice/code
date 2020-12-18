package service;

import java.net.URLEncoder;

import com.google.gson.Gson;

import model.Response;
import utils.HttpUtils;

public class QingYunkeRobotServiceImpl implements RobotService{
    private String uri = "https://api.qingyunke.com/api.php?key=free&appid=0&msg=%s";
    private String api;
    Gson gson = new Gson();

    @Override
    public Response answer(String question) {
        try {
            
            api = String.format(uri, URLEncoder.encode(question, "UTF-8"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        String ans = HttpUtils.request(api);
        if (!ans.contains("##³öÏÖ´íÎó£¬"))
            return gson.fromJson(ans, Response.class);
        else {
            Response response = new Response();
            response.setContent(ans);
            return response;
        }
    }

}
