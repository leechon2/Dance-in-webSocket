package YZ.Z1.Matching;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonParser;

import YZ.Z1.dao.MatchingDAO;
import YZ.Z1.dto.BlockDTO;
import YZ.Z1.dto.BookMarkDTO;
import YZ.Z1.dto.CalendarDTO;
import YZ.Z1.dto.MBTIDTO;
import YZ.Z1.dto.MemberDto;

@Service
public class MatchingService {

	@Autowired
	private MatchingDAO madao;

	public ArrayList<HashMap<String, String>> matchingList(String startId ,double intstartx, double intstarty) {
		System.out.println("xyList Service");
		System.out.println(startId);
		ArrayList<HashMap<String, String>> distInfoList = madao.matchingList(startId,intstartx, intstarty);
		return distInfoList;
	}

	public String jsonlocation(String startx, String starty, String ylatitude, String xlogitude) throws Exception {
		StringBuilder urlBuilder = new StringBuilder(
				"https://apis.openapi.sk.com/tmap/routes/distance?version=1&format=json&callback=result"); /* URL */

		urlBuilder.append("&" + URLEncoder.encode("startX", "UTF-8") + "="
				+ URLEncoder.encode(startx, "UTF-8")); /* 사용자x좌표 */
		urlBuilder.append("&" + URLEncoder.encode("startY", "UTF-8") + "="
				+ URLEncoder.encode(starty, "UTF-8")); /* 사용자Y좌표 */
		urlBuilder.append(
				"&" + URLEncoder.encode("endX", "UTF-8") + "=" + URLEncoder.encode(xlogitude, "UTF-8")); /* 매칭자의 x좌표 */
		urlBuilder.append(
				"&" + URLEncoder.encode("endY", "UTF-8") + "=" + URLEncoder.encode(ylatitude, "UTF-8")); /* 매칭자의 y좌표 */
		urlBuilder.append(
				"&" + URLEncoder.encode("reqCoordType", "UTF-8") + "=" + URLEncoder.encode("WGS84GEO", "UTF-8"));
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("appKey", "eAH5VFo7EW3toIei3i6d4A4warmccsi241f6M5a4");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();
		System.out.println(sb.toString());
		String dist = JsonParser.parseString(sb.toString()).getAsJsonObject().get("distanceInfo").getAsJsonObject()
				.get("distance").getAsString();

		
		return dist;

	}

	public ArrayList<MemberDto> profileList(String startId, String distInfUser) {
		ArrayList<MemberDto> profileInfoList = madao.profileList(startId,distInfUser);
		return profileInfoList;
	}

	public ArrayList<MBTIDTO> mbtiResult(String user_id, String startId) {
		ArrayList<MBTIDTO> mbtiResult = madao.mbtiResult(user_id,startId);
		
		return mbtiResult;
	}

	public int respList(String distInfUser, String startId) {
		int result = madao.respList(distInfUser,startId);
		return result;
	}

	public int agreedClick(String startId, String userId) {
		int agreeResult = madao.agreedClick(startId,userId);
		return agreeResult;
	}

	public int banClick(String startId, String userId) {
		int banResult = madao.banClick(startId,userId);
		return banResult;
	}

	public int bookMarkClick(String startId, String userId) {
		int bookMakrResult =madao.bookMarkClick(startId,userId);
		return bookMakrResult;
	}

	public ArrayList<BookMarkDTO> BookMarkList(String startTime, String lastTime, String startId) {
		ArrayList<BookMarkDTO> BookMarkInfo = madao.BookMarkList(startTime,lastTime,startId);
		return BookMarkInfo;
	}

	public ArrayList<MemberDto> profileInfo(String userId) {
		ArrayList<MemberDto> profileResult = madao.profileInfo(userId);
		return profileResult;
	}

	public int BookMarkDeleteClick(String startId, String userId) {
		int bookMakrDelResult =madao.BookMarkDeleteClick(startId,userId);
		return bookMakrDelResult;
	}

	public int insertBlock(String startId, String userId) {
		int blockResult =madao.insertBlock(startId,userId);
		return blockResult;
	}

	public ArrayList<BlockDTO> BlockList(String startTime, String lastTime, String startId) {
		 ArrayList<BlockDTO> blockInfoList = madao.BlockList(startTime,lastTime,startId);
		return blockInfoList;
	}

	public int BlockDeleteClick(String startId, String userId) {
		int blockDelResult = madao.BlockDeleteClick(startId,userId);
		return blockDelResult;
	}

	public int updateBlock(String startId, String userId) {
		int updateBlockResult=  madao.updateBlock(startId,userId);
		return updateBlockResult;
	}

	public int updateBookMark(String startId, String userId) {
		int updateBookMarkResult = madao.updateBookMark(startId,userId);
		return updateBookMarkResult;
	}

	public int updateBookMarkDel(String startId, String userId) {
		int updateBookMarkDelResult = madao.updateBookMarkDel(startId,userId);
		return updateBookMarkDelResult;
	}

	public ArrayList<MemberDto> waitMatcing(String startTime, String lastTime, String startId) {
		ArrayList<MemberDto> matchingInfoList = madao.waitMatcing(startTime,lastTime,startId);
		return matchingInfoList;
	}


	public int updateMatching(String startId, String userId) {
		int updateMatchingResult =madao.updateMatching(startId,userId);
		return updateMatchingResult;
	}

	public ArrayList<MemberDto> mainList(String startId) {
		ArrayList<MemberDto> mainInfoList = madao.mainList(startId);
		return mainInfoList;
	}

	public MemberDto ProfileList(String userId) {
		MemberDto userInfo = madao.Profile(userId);
		if(userInfo.getUser_img()==null) {
			userInfo.setUser_img("http://www.ikunkang.com/news/photo/202205/35907_27554_3919.jpg");
		}else {
			userInfo.setUser_img(userInfo.getUser_img());
		}
		
		return userInfo;
	}

	public int calendarInfo(CalendarDTO event) {
		int calendarResult = madao.calendarInfo(event);
		return calendarResult;
	}

	public ArrayList<CalendarDTO> calnedarList(String startId) {
		ArrayList<CalendarDTO> calendarDateInfo = madao.calnedarList(startId);
		return calendarDateInfo;
	}

	public ArrayList<MemberDto> successMatching(String startId,String startTime,String lastTime) {
		System.out.println("successMatching");
		ArrayList<MemberDto> matchingInfoList = madao.successMatching(startId,startTime,lastTime);
		return matchingInfoList;
	}

	public int successClick(String startId, String userId) {
		int successResult = madao.successClick(startId,userId);
		return successResult;
	}

	public int rejectClick(String startId, String userId) {
		int rejectResult = madao.rejectClick(startId, userId);
		return rejectResult;
	}

	public ArrayList<MemberDto> respMatcing(String startTime, String lastTime, String startId) {
		ArrayList<MemberDto> matchingInfoList = madao.respMatcing(startTime,lastTime,startId);
		return matchingInfoList;
	}

	

}
