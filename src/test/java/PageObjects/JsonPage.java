package PageObjects;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.simple.parser.ParseException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.Map;
import base.ApplicationKeywords;

public class JsonPage extends ApplicationKeywords {

    public static void parseObjectNew(JSONObject json, String key,String presentValueGroup,String presentValueMap){
        try {
            if (json.toMap().containsValue(presentValueGroup)&&json.toMap().containsKey("group")) {
                JSONArray group = json.getJSONArray("group");
                for (int i = 0; i < group.length(); i++) {
                    JSONObject jsonArray = group.getJSONObject(i);
                    Map<String, Object> map = jsonArray.toMap();
                    if (map.containsValue("shop-at-emi-store-title")) {
                        System.out.println("Title: "+map.get("title"));
                    }
                    if (map.containsValue(presentValueMap)) {
                        String keys="icontitle,iconimage-android,iconlink";
                        String[] split = keys.split(",");

                        for (int j = 0; j <split.length ; j++) {
                            String keyName = split[j];
                        if (map.containsKey(keyName)) {
                            System.out.println(keyName+":" + map.get(keyName));
                        } else {
                            System.err.println("Expected Key is Not Present: "+keyName);
                            System.err.println("Map: " + map);
                        }

                        }
//                        if (map.containsKey("title")) {
//                            System.out.println("Title: " + map.get("title"));
//                        } else if (map.containsKey("icontitle")) {
//                            System.out.println("Icon Title: " + map.get("icontitle"));
//                        } else {
//                            System.err.println("Expected Key is Not Present");
//                            System.err.println("Map: " + map);
//                        }
//
//                        if (map.containsKey("iconimage-android")) {
//                            System.out.println("Image: " + map.get("iconimage-android"));
//                        } else {
//                            System.err.println("Expected Key is Not Present");
//                            System.err.println("Map: " + map);
//                        }
//
//                        if (map.containsKey("iconlink")) {
//                            System.out.println("Redirect Link: " + map.get("iconlink"));
//                        } else {
//                            System.err.println("Expected Key is Not Present");
//                            System.err.println("Map: " + map);
//                        }


                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    public static void getKey(JSONObject json, String key,String presentValueGroup,String presentValueMap){
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
                                getKey(json.getJSONObject(nextKeys), key,presentValueGroup,presentValueMap);
                            }
                        } else if (json.get(nextKeys) instanceof JSONArray) {
                            JSONArray jsonArray = json.getJSONArray(nextKeys);
                            for (int i = 0; i < jsonArray.length(); i++) {
                                String jsonArrayString = jsonArray.get(i).toString();
                                JSONObject innerJson = new JSONObject(jsonArrayString);
                                if (exists == false) {
                                    getKey(innerJson, key,presentValueGroup,presentValueMap);
                                }
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } else {
                parseObjectNew(json, key,presentValueGroup,presentValueMap);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void getJson(String presentValueGroup,String presentValueMap){
        try {
            String result = new String(Files.readAllBytes(Paths.get("./UploadDocuments/NewHomeAEM.json")));
            JSONObject inputJsonObject = new JSONObject(result);
            getKey(inputJsonObject, "group",presentValueGroup,presentValueMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        getJson("shop-at-emi-store","laptops-icon");
    }
}