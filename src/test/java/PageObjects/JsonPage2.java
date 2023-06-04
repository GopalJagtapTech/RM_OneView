package PageObjects;

import base.ApplicationKeywords;
import org.json.JSONArray;
import org.json.JSONObject;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.Map;

public class JsonPage2 extends ApplicationKeywords {

    public static void parseObjectNew(JSONObject json, String key,String presentValueGroup,String presentValueMap,String titleValue,String expectedKeys){
        try {
            if (json.toMap().containsValue(presentValueGroup)&&json.toMap().containsKey(key)) {
                JSONArray group = json.getJSONArray(key);
                for (int i = 0; i < group.length(); i++) {
                    JSONObject jsonArray = group.getJSONObject(i);
                    Map<String, Object> map = jsonArray.toMap();
                    if (map.containsValue(titleValue)) {
                        System.out.println("Title: "+map.get("title"));
                    }
                    if (map.containsValue(presentValueMap)) {
                        String[] split = expectedKeys.split(",");
                        for (int j = 0; j <split.length ; j++) {
                            String keyName = split[j];
                        if (map.containsKey(keyName)) {
                            System.out.println(keyName+":" + map.get(keyName));
                        } else {
                            System.err.println("Expected Key is Not Present: "+keyName);
                            System.err.println("Map: " + map);
                        }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    public static void getKey(JSONObject json, String key,String presentValueGroup,String presentValueMap,String titleValue,String expectedKeys){
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
                                getKey(json.getJSONObject(nextKeys), key,presentValueGroup,presentValueMap,titleValue,expectedKeys);
                            }
                        } else if (json.get(nextKeys) instanceof JSONArray) {
                            JSONArray jsonArray = json.getJSONArray(nextKeys);
                            for (int i = 0; i < jsonArray.length(); i++) {
                                String jsonArrayString = jsonArray.get(i).toString();
                                JSONObject innerJson = new JSONObject(jsonArrayString);
                                if (exists == false) {
                                    getKey(innerJson, key,presentValueGroup,presentValueMap,titleValue,expectedKeys);
                                }
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } else {
                parseObjectNew(json, key,presentValueGroup,presentValueMap,titleValue,expectedKeys);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void getJson(String presentValueGroup,String presentValueMap,String titleValue,String expectedKeys){
        try {
            String result = new String(Files.readAllBytes(Paths.get("./UploadDocuments/NewHomeAEM.json")));
            JSONObject inputJsonObject = new JSONObject(result);
            getKey(inputJsonObject, "group",presentValueGroup,presentValueMap,titleValue,expectedKeys);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        getJson("shop-at-emi-store","laptops-icon","","");
    }
}