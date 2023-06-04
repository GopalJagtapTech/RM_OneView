package PageObjects;

import base.ApplicationKeywords;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class JsonPageLabelForMasterCards extends ApplicationKeywords {

    public static Map<String,Object> parseObjectNew(JSONObject json, String key, String presentValueGroup, String presentValueMap, String expectedKeys){
        Map<String,Object> objects=new LinkedHashMap<>();
        try {
            if (json.toMap().containsValue(presentValueGroup)&&json.toMap().containsKey(key)) {
                JSONArray group = json.getJSONArray(key);
                for (int i = 0; i < group.length(); i++) {
                    JSONObject jsonArray = group.getJSONObject(i);
                    Map<String, Object> map = jsonArray.toMap();

                    if (map.containsValue(presentValueMap)) {
                        String[] split = expectedKeys.split(",");
                        for (int j = 0; j <split.length ; j++) {
                            String keyName = split[j];
                            if (j==0) {
                                JsonPageLabels.mapObject.clear();
                                JsonPageLabels.mapObject.putAll(map);
                            }
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
        return objects;
    }


    public static Map<String, Object> getKey(JSONObject json, String key,String presentValueGroup,String presentValueMap,String expectedKeys){
        Map<String, Object> stringObjectMap=new LinkedHashMap<>();
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
                                getKey(json.getJSONObject(nextKeys), key,presentValueGroup,presentValueMap,expectedKeys);
                            }
                        } else if (json.get(nextKeys) instanceof JSONArray) {
                            JSONArray jsonArray = json.getJSONArray(nextKeys);
                            for (int i = 0; i < jsonArray.length(); i++) {
                                String jsonArrayString = jsonArray.get(i).toString();
                                JSONObject innerJson = new JSONObject(jsonArrayString);
                                if (exists == false) {
                                    getKey(innerJson, key,presentValueGroup,presentValueMap,expectedKeys);
                                }
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } else {
                stringObjectMap = parseObjectNew(json, key, presentValueGroup, presentValueMap, expectedKeys);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stringObjectMap;
    }

    public static Map<String, Object> getJson(String presentValueGroup,String presentValueMap,String expectedKeys){
        Map<String, Object> group=new LinkedHashMap<>();
        try {
            String result = new String(Files.readAllBytes(Paths.get("./UploadDocuments/NewHomeAEM.json")));
            JSONObject inputJsonObject = new JSONObject(result);
            JSONArray content = inputJsonObject.getJSONArray("content");
            content.remove(1);
            System.out.println(content);
            JSONObject input = content.getJSONObject(0);
            System.out.println("Testing: "+input);
            JSONArray i1 = input.getJSONArray("screenContent");
            for (int i = 0; i < i1.length(); i++) {
                JSONObject jsonObject = i1.getJSONObject(i);

                if (jsonObject.toMap().containsValue("main-cards")) {
                    File f=new File("D:\\Data\\Official\\Projects Live\\EXPERIA Re-Imagine\\Packages\\January 2023\\ReImagine_09012023\\UploadDocuments\\new.json");
                    if (f.exists()) {
                        f.delete();
                    }
                    f.createNewFile();
                    FileWriter fr = new FileWriter(f, true);
                    BufferedWriter br = new BufferedWriter(fr);
                    br.write(jsonObject.toString());
                    br.close();
                    fr.close();
                }

            }
            String r1 = new String(Files.readAllBytes(Paths.get("./UploadDocuments/new.json")));
            JSONObject i2 = new JSONObject(r1);
            JSONArray a2 = i2.getJSONArray("group");
            JSONObject i3;
            if (presentValueGroup.equals("apply-for-loans")) {
                i3 = a2.getJSONObject(0);
            } else if (presentValueGroup.equals("emi-network-card")) {
                i3 = a2.getJSONObject(1);
            } else {
                i3 = a2.getJSONObject(2);
            }
            System.out.println("Main Crds: "+i2);
            getKey(i3, "group", presentValueGroup, presentValueMap, expectedKeys);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return group;
    }

    public static void main(String[] args)

    {
//        getJson("apply-for-loans","Gold","icontitle,iconimage-android,iconlink");
        getJson("apply-for-loans","locate-us-title","iconlink");
        System.out.println("MAP:- "+JsonPageLabels.mapObject);
    }
}