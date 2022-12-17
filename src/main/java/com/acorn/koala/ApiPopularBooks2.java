package com.acorn.koala;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Component
public class ApiPopularBooks2 {

	public static String getList(int start,int CategoryId) {
		
		
		String apiURL = "http://www.aladin.co.kr/ttb/api/ItemList.aspx"
				+ "?"
				+ "ttbkey=ttbst20352313001"
				+ "&"
				+ "QueryType=Bestseller"
				+ "&"
				+ "MaxResults=100"
				+ "&"
				+ "start="+start
				+ "&"
				+ "SearchTarget=Book"
				+ "&"
				+ "output=xml"
				+ "&"
				+ "Version=20131101"
				+ "&"
				+ "Cover=Big"
				+ "&"
				+ "CategoryId="+CategoryId
				;
						
		// JSON 결과
		Map<String, String> requestHeaders = new HashMap<String, String>();
		String responseBody = get(apiURL, requestHeaders);

		//XML -> JSONObecjt
		JSONObject resultObj = XML.toJSONObject(responseBody);
		//System.out.println(responseBody);
		//System.out.println("result=" + resultObj.toString());
		
		// "response" key를 JSONObjext 객체로 생성
		JSONObject result = resultObj.getJSONObject("object");
		//System.out.println(result);
		
		return result.toString();
	}

	//
	private static String get(String apiUrl, Map<String, String> requestHeaders) {
		HttpURLConnection con = connect(apiUrl);
		try {
			con.setRequestMethod("GET");
			for (Map.Entry<String, String> header : requestHeaders.entrySet()) {
				con.setRequestProperty(header.getKey(), header.getValue());
			}

			int responseCode = con.getResponseCode();
			if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
				return readBody(con.getInputStream());
			} else { // 오류 발생
				return readBody(con.getErrorStream());
			}
		} catch (IOException e) {
			throw new RuntimeException("API 요청과 응답 실패", e);
		} finally {
			con.disconnect();
		}
	}

	// apiurl 작업
	private static HttpURLConnection connect(String apiUrl) {
		try {
			URL url = new URL(apiUrl);
			return (HttpURLConnection) url.openConnection();
		} catch (MalformedURLException e) {
			throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
		} catch (IOException e) {
			throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
		}
	}
	
	//
	private static String readBody(InputStream body){
        InputStreamReader streamReader = new InputStreamReader(body);
        
        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder(); 
            
            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            } 
            
            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는 데 실패했습니다.", e);
        }
    }
	
	public static ArrayList<BooksDto> fromJSONtoItems(String result){
		
		JSONObject rjson = new JSONObject(result);
		//System.out.println("rjson = "+ rjson);
		
		JSONArray item = rjson.getJSONArray("item");
		//System.out.println("item = "+ item);
		
		
		ArrayList<BooksDto> booksDtoList = new ArrayList<BooksDto>();
		for(int i = 0 ; i < item.length();i++) {
			JSONObject docJson = item.getJSONObject(i);
			//System.out.println("doc = " + docJson );
			
			BooksDto booksDto = new BooksDto(docJson);
			booksDtoList.add(booksDto);
		}
		return booksDtoList;		
	}
	
	public static void main(String[] args) {
		//String result = getList();
		//fromJSONtoItems(result);
	}
}
