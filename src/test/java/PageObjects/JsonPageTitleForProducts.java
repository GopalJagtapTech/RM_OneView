package PageObjects;

import base.ApplicationKeywords;
import org.json.JSONArray;
import org.json.JSONObject;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.Map;

public class JsonPageTitleForProducts extends ApplicationKeywords {

//    public static String title="";

    public static void parseObjectForTitle(JSONObject json, String key,String presentValueGroup,String titleValue){
        try {
            if (json.toMap().containsValue(presentValueGroup)&&json.toMap().containsKey(key)) {
                JSONArray group = json.getJSONArray(key);
                for (int i = 0; i < group.length(); i++) {
                    JSONObject jsonArray = group.getJSONObject(i);
                    Map<String, Object> map = jsonArray.toMap();
                    if (map.containsValue(titleValue)) {
                        if (map.containsKey("title")) {
                            JsonPageTitle.title= (String) map.get("title");
                            System.out.println("Title: " + map.get("title"));
                        } else if (map.containsKey("icontitle")) {
                            JsonPageTitle.title= (String) map.get("title");
                            System.out.println("Title: " + map.get("icontitle"));
                        } else {
                            System.err.println("Expected key is not present for title");
                            System.err.println("MAP: "+map);
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static void getKey(JSONObject json, String key,String presentValueGroup,String titleValue){
        try {
            boolean exists = json.has(key);
            Iterator<?> keys;
            String nextKeys;
            if (!exists) {
                keys = json.keys();
                while (keys.hasNext()) {
                    nextKeys = (String) keys.next();
                    try {
                        if (json.get(nextKeys) instanceof JSONObject) {
                            if (exists == false) {
                                getKey(json.getJSONObject(nextKeys), key,presentValueGroup,titleValue);
                            }
                        } else if (json.get(nextKeys) instanceof JSONArray) {
                            JSONArray jsonArray = json.getJSONArray(nextKeys);
                            for (int i = 0; i < jsonArray.length(); i++) {
                                String jsonArrayString = jsonArray.get(i).toString();
                                JSONObject innerJson = new JSONObject(jsonArrayString);
                                if (exists == false) {
                                    getKey(innerJson, key,presentValueGroup,titleValue);
                                }
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } else {
                parseObjectForTitle(json, key,presentValueGroup,titleValue);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void getJson(String presentValueGroup,String titleValue){
        try {
            String result = new String(Files.readAllBytes(Paths.get("./UploadDocuments/NewHomeAEM.json")));
            JSONObject inputJsonObject = new JSONObject(result);

            JSONArray content = inputJsonObject.getJSONArray("content");
            content.remove(0);
            System.out.println(content);
            JSONObject input = content.getJSONObject(0);
            System.out.println("Testing: "+input);
            getKey(input, "group",presentValueGroup,titleValue);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        getJson("shop-at-emi-store","shop-at-emi-store-title");
    }
}