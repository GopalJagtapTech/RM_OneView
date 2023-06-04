package PageObjects;

import base.ApplicationKeywords;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class JsonFetchingForParticular extends ApplicationKeywords {


    public static Map<String,Object> parseObjectNew(JSONObject json, String key,String particularKeyValue,String sectionNameKey) {
        Map<String, Object> objects = new LinkedHashMap<>();
        try {
            if (json.toMap().containsValue(particularKeyValue)) {
                if (json.toMap().get("key").equals(particularKeyValue)&&json.toMap().get("section").equals(sectionNameKey)) {
                    JsonPageLabels.mapObject.clear();
                    JsonPageLabels.mapObject.putAll(json.toMap());
                    System.out.println("MAPP:"+json.toMap());
                }
            }
//            if (json.toMap().containsKey(key)) {
//
//                Map<String, Object> map = json.toMap();
//                if (map.containsValue(key)&&map.containsValue(expectedValue)) {
//                    JsonPageLabels.mapObject.clear();
//                    JsonPageLabels.mapObject.putAll(map);
//                }
//                 }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return objects;
    }


    public static void getKey(JSONObject json, String key,String particularKeyValue,String sectionNameKey) throws IOException {
        boolean exists = json.has(key);
        Iterator<?> keys;
        String nextKeys;
        if (!exists) {
            keys = json.keys();
//        System.out.println(keys);
            while (keys.hasNext()) {
                nextKeys = (String) keys.next();
//            System.out.println(nextKeys);
                try {
                    if (json.get(nextKeys) instanceof JSONObject) {
                        if (exists == false) {
//                        System.out.println(key);
//                        System.out.println(json.getJSONObject(nextKeys));
                            getKey(json.getJSONObject(nextKeys), key,particularKeyValue,sectionNameKey);
                        }
                    } else if (json.get(nextKeys) instanceof JSONArray) {
//                    System.out.println(key);
//                    System.out.println(json.getJSONObject(nextKeys));
                        JSONArray jsonArray = json.getJSONArray(nextKeys);
//                    System.out.println(key);
//                    System.out.println(jsonArray);
                        for (int i = 0; i < jsonArray.length(); i++) {
                            String jsonArrayString = jsonArray.get(i).toString();
//                        System.out.println(jsonArrayString);
                            JSONObject innerJson = new JSONObject(jsonArrayString);
//                        System.out.println(innerJson);
                            if (exists == false) {
                                getKey(innerJson, key,particularKeyValue,sectionNameKey);
                            }
                        }

                    }
                } catch (Exception e) {
                }
            }
        } else {
//            parseObject(json, key);
            parseObjectNew(json, key,particularKeyValue,sectionNameKey);
        }
    }


//    public static Map<String, Object> getKey(JSONObject json){
//        Map<String, Object> stringObjectMap=new LinkedHashMap<>();
//        try {
////            Iterator<String> keys = json.keys();
////            while (keys.hasNext()) {
////                System.out.println("KEYSS: "+keys.next());
////            }
//
//            boolean exists = json.has(key);
//            Iterator<?> keys;
//            String nextKeys;
//            if (!exists) {
//                keys = json.keys();
//                while (keys.hasNext()) {
//                    nextKeys = (String) keys.next();
//                    try {
//                        if (json.get(nextKeys) instanceof JSONObject) {
//                            if (exists == false) {
//                                getKey(json.getJSONObject(nextKeys), key,expectedValue);
//                            }
//                        } else if (json.get(nextKeys) instanceof JSONArray) {
//                            JSONArray jsonArray = json.getJSONArray(nextKeys);
//                            for (int i = 0; i < jsonArray.length(); i++) {
//                                String jsonArrayString = jsonArray.get(i).toString();
//                                JSONObject innerJson = new JSONObject(jsonArrayString);
//                                if (exists == false) {
//                                    getKey(innerJson, key,expectedValue);
//                                }
//                            }
//                        }
//                    } catch (Exception e) {
//                        e.printStackTrace();
//                    }
//                }
//            } else {
//                 stringObjectMap = parseObjectNew(json, key,expectedValue);
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
////        return stringObjectMap;
//        return stringObjectMap;
//    }

    public static Map<String, Object> getJson(String key,int deleteJsonArrayIndex,String particularKeyValue,String sectionNameKey){
        Map<String, Object> group=new LinkedHashMap<>();
        try {
            String result = new String(Files.readAllBytes(Paths.get("./UploadDocuments/NewHomeAEM.json")));
            JSONObject inputJsonObject = new JSONObject(result);
            JSONArray content = inputJsonObject.getJSONArray("content");
            content.remove(deleteJsonArrayIndex);
            System.out.println(content);
//            JSONObject input = content.getJSONObject(deleteJsonArrayIndex);
            JSONObject input = content.getJSONObject(0);
            System.out.println("Testing: "+input);
            getKey(input,"image-android",particularKeyValue,sectionNameKey);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return group;
    }



    public static void main(String[] args) {
//        getJson("shop-at-emi-store", "laptops-icon", "iconimage-android,iconlink,icontitle");
//        getJson("icontitle","locate-us");
//        System.out.println("MAP:- "+JsonPageLabels.mapObject);
        getJson("iconimage-android",1,"bajaj-finserv-emi-store-icon","your-cibil-score");
    }
}