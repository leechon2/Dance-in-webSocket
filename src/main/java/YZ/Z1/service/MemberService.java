package YZ.Z1.service;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import YZ.Z1.dao.MemberDao;
import YZ.Z1.dto.MatchingxyDTO;
import YZ.Z1.dto.MemberDto;

@Service
public class MemberService {

	@Autowired
	MemberDao md;

	@Autowired
	HttpSession session;

	public int insertRegister(MemberDto mdto, String x, String y, String main) {
	      if(mdto.getUser_imgfiles()!=null) {
	        String savePath = session.getServletContext().getRealPath("resources/profileimg/");
	         String filesName = "";
	         String firstName = mdto.getUser_id();
	         for(int i = 0 ; i < mdto.getUser_imgfiles().length ; i++) {
	            String secondName = String.format("%0"+2+"d",i+1);   
	            String extendName = mdto.getUser_imgfiles()[i].getOriginalFilename();
	            int dotIndex = extendName.lastIndexOf(".");
	            extendName = extendName.substring(dotIndex);
	            String fullName = firstName + secondName +extendName;
	            if(i==mdto.getUser_imgfiles().length-1) {
	               filesName = filesName + fullName;
	            }else {
	               filesName = filesName + fullName +"_";
	            }
	            if(mdto.getUser_imgfiles()[i].getOriginalFilename().equals(main)) {
	               main = fullName;
	            }
	            mdto.setUser_img(filesName);
	            File file = new File(savePath+fullName);
	            System.out.println(savePath+fullName);
	            try {
	               mdto.getUser_imgfiles()[i].transferTo(file);
	            } catch (IllegalStateException e) {
	               // TODO Auto-generated catch block
	               e.printStackTrace();
	            } catch (IOException e) {
	               // TODO Auto-generated catch block
	               e.printStackTrace();
	            }
	         }
	         filesName = main + "_" + filesName.replace(main,"").replace("__","_");
	         System.out.println(filesName);
	      }
	      if(md.insertRegister(mdto)==1) {
	         if(md.insertcoordinates(mdto.getUser_id(),x,y)==1) {
	            System.out.println("회원등록, 프로필 사진, 좌표 등록 완료");
	         }
	         return 1;
	      }else {
	         return 0;
	      }
	   }

	public int SelectLogin(String id, String pw) {
		String result = md.SelectLogin(id, pw);
		if (result == null) {
			return 0;
		} else if (result.equals(id)) {
			return 1;
		} else {
			return 0;
		}
	}

	public int checkId(String mid) {
		String pw = null;
		String result = md.SelectLogin(mid, pw);
		if (result != null && result.equals(mid)) {
			return 1;
		} else {
			// 아이디를 찾지 못한 경우에 대한 처리
			return 0;
		}
	}

	public MatchingxyDTO selectXY(String userid) {
		MatchingxyDTO xyInfo = md.selectXY(userid);
		return xyInfo;
	}

	public String selectUserProfileImg(String userid) {
		String result = md.selectUserProfileImg(userid);
		System.out.println(result);
		if (result == null) {
			return "http://www.ikunkang.com/news/photo/202205/35907_27554_3919.jpg";
		} else {
			return result.split("_")[0];
		}
	}

	public int updateProfile(MemberDto mdto, String x, String y, String oriimg, String main, String dontUpload) {
	      String imgfiles = "";
	      System.out.println(oriimg);
	      String directoryPath = session.getServletContext().getRealPath("resources/profileimg/");
	      System.out.println("MemberService에서 수신한 xy 좌표\n             x:"+x +", y:"+ y);
	      main = isEmptyOrNull(main);
//	      이미지 업로드 및 삭제
	      if(main != null) {
	         // 기존 파일 삭제
	         if(isEmptyOrNull(oriimg)!=null) {
	            System.out.println("기존 파일 제거 필요");
	            // 삭제할 파일이름을 담은 배열
	            String deletefiles[] = oriimg.split("_");
	            // 기존 업로드 된 파일이름을 담은 배열
	            String[] originimgs = mdto.getUser_img().split("_");
	            // 프로필 사진이 기존 사진인지 확인
	            // 삭제 대상 파일 삭제
	            for (String filename : deletefiles) {
	               File filetoDelete = new File(directoryPath+filename);
	               if(filetoDelete.exists()) {
	                  if(filetoDelete.delete()) {
	                     System.out.println("파일 " + filename + " 삭제 성공");
	                  }else {
	                     System.out.println("파일 " + filename + " 삭제 실패");
	                  }
	               }else {
	                  // 임의 수정했을 가능성
	                  System.out.println("파일 " + filename + "이 없습니다.");
	               }
	            }
	         }else {
	            System.out.println("삭제 할 파일 없음");
	         }
	   //      기존 파일 넘버링 정렬 및 사용자의 이미지 이름목록 리턴
	         imgfiles = rearrangeFileName(directoryPath, mdto.getUser_id());
	         int nextNumber =0;
	         System.out.println("정렬결과 사용자 이미지 :"+imgfiles);
	         //마지막 파일 이름 확인
	         String str = imgfiles;
	            while (str.contains("_")) {
	               str = str.replace("_", "");
	            }
	         if (!str.equals("")){
	            String lastImgName = imgfiles.split("_")[imgfiles.split("_").length-1];
	            int dotIndex = lastImgName.indexOf(".");
	            System.out.println(dotIndex);
	            nextNumber = Integer.parseInt(lastImgName.substring(dotIndex-2,dotIndex));
	         }
	         // 업로드 취소 파일 확인
	         int result = 0;
	         String[] dontUploads = null;
	         if(isEmptyOrNull(dontUpload)!=null) {
	            if (dontUpload.substring(dontUpload.length()-1).equals("_")) {
	               dontUpload = dontUpload.substring(0, dontUpload.length()-1);
	               dontUploads = dontUpload.split("_");
	            }
	         }
	         Set<String> dontUploadSet = new HashSet<>();
	         if (dontUploads != null) {
	            dontUploadSet.addAll(Arrays.asList(dontUploads));
	         }
	         int index = 0; // 파일 인덱스 변수 추가
	         if(mdto.getUser_imgfiles().length>0){
	            for (MultipartFile file : mdto.getUser_imgfiles()) {
	               String originalFileName = file.getOriginalFilename();
	               // 업로드하지 말아야 할 파일인지 확인
	               if (!dontUploadSet.contains(originalFileName)) {
	                  // 파일을 업로드하는 로직
	                  String newFileName = mdto.getUser_id() + String.format("%02d", nextNumber + index + 1); // 인덱스 변수 사용
	                  String extension = originalFileName.split("\\.")[1];
	                  imgfiles = imgfiles + "_" + newFileName + "." + extension;
	                  if(main.equals(originalFileName)){
	                     main = newFileName+"."+extension;
	                  }
	                  try {
	                     file.transferTo(new File(directoryPath + File.separator + newFileName + "." + extension));
	                     System.out.println(newFileName + "." + extension + " 저장");
	                     result++;
	                  } catch (IllegalStateException e) {
	                     System.out.println(newFileName + "." + extension + " 파일 업로드 중 IllegalStateException 발생");
	                     e.printStackTrace();
	                  } catch (IOException e) {
	                     System.out.println(newFileName + "." + extension + " 파일 업로드 중 IOException 발생");
	                     e.printStackTrace();
	                  }
	               }
	               index++; // 파일 인덱스 증가
	            }
	            System.out.println(result+"개 파일 업로드 성공");
	            imgfiles = main + imgfiles.replace(main, "").replace("__", "_");
	            System.out.println("메인 프로필 사진 위치 수정 결과 :"+ imgfiles );
	            session.setAttribute("userimg", main);
	         }
	      }
	      
//	      DB 업로드 준비
	      mdto.setUser_img(imgfiles);
//	      생성되었지만 비어있는 필드가 있는지확인하고, 비어있으면 null 
	      mdto = nullCheck(mdto);
//	      프로필업데이트
	      int updateResult = 0;
	      boolean allFieldsEmpty = false;
	      try {
			 allFieldsEmpty = isAllFieldsEmpty(mdto);
	      } catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	      }
	      if (!allFieldsEmpty) {
	    	  updateResult = md.updateProfile(mdto);
		  }
	      //네비게이션 프로필 사진 갱신용
	      
//	      좌표 업데이트
	      int coordinatesResult = 0; 
	      if(isEmptyOrNull(mdto.getUser_address())!=null) {
	         coordinatesResult = md.updatecoordinates(mdto.getUser_id(),x,y);
	         System.out.println("좌표 업데이트 완료");
	      }
	      return updateResult+coordinatesResult;
	   }


	   public String rearrangeFileName(String directoryPath, String userId) {
	      System.out.println(userId);
	      String result = "";
	      // 디렉토리에서 파일 목록을 가져옴
	      File directory = new File(directoryPath);
	      File[] files = directory.listFiles();
	      // 파일 이름 목록을 저장할 리스트 생성
	      List<String> fileNames = new ArrayList<>();
	      for (File file : files) {
	          if (file.isFile()) {
	             System.out.println("정렬 중 : "+file.getName());
	             int dotindex = file.getName().indexOf(".");
	              if(userId.equals(file.getName().substring(0, dotindex-2))) {
	                 System.out.println("찾은 파일이름 : "+ file.getName());
	                  fileNames.add(file.getName());
	              }
	          }
	      }
	      // 파일 이름을 사용자명과 숫자로 분리하여 정렬
	      fileNames.sort(Comparator.comparing(this::extractUsernameAndNumber));
	      // 재정렬된 파일에 대해 새로운 이름을 부여
	      ArrayList<String> renamedFileNames = new ArrayList<>(); // 새롭게 지정된 파일 이름을 저장할 리스트
	      // 파일을 새로운 이름으로 변경하고 리스트에 저장
	      for (int i = 0; i < fileNames.size(); i++) {
	         String originalFileName = fileNames.get(i);
	         String newFileName = userId + String.format("%08d", i + 1) + getFileExtension(originalFileName);
	         File originalFile = new File(directoryPath, originalFileName);
	         File newFile = new File(directoryPath, newFileName);
	         originalFile.renameTo(newFile);
	         renamedFileNames.add(newFileName);
	      }
	      // 재정렬된 파일에 대해 기존 양식으로 이름을 변경
	      for (int i = 0; i < fileNames.size(); i++) {
	          String finalName = renamedFileNames.get(i).replace("000000","");
	          String tempName = renamedFileNames.get(i);
	          File tempFile = new File(directoryPath, tempName);
	          File finalFile = new File(directoryPath, finalName);
	          tempFile.renameTo(finalFile);
	          result = result + "_" + finalName;
	      }
	      return result;
	   }

	   public boolean isAllFieldsEmpty(Object obj) throws IllegalAccessException {
		    Class<?> clazz = obj.getClass();
		    Field[] fields = clazz.getDeclaredFields();

		    // 모든 필드를 순회하면서 값이 비어있는지 확인
		    for (Field field : fields) {
		        field.setAccessible(true); // private 필드에 접근하기 위해 설정
		        Object value = field.get(obj); // 필드의 값을 가져옴

		        // 필드의 값이 null이 아니고, 빈 문자열도 아니라면 false 반환
		        if (value != null && !value.toString().isEmpty()) {
		            return false;
		        }
		    }

		    // 모든 필드가 비어있으면 true 반환
		    return true;
		}



	// 파일 이름에서 사용자명과 숫자를 추출하여 반환
	private String extractUsernameAndNumber(String fileName) {
		String username = extractUsername(fileName);
		String number = fileName.substring(username.length(), username.length() + 2);
		return username + number;
	}

	// 파일 이름에서 사용자명을 추출하여 반환
	private String extractUsername(String fileName) {
		int index = 0;
		while (index < fileName.length() && Character.isLetter(fileName.charAt(index))) {
			index++;
		}
		return fileName.substring(0, index);
	}

	// 파일 확장자를 추출하여 반환
	private String getFileExtension(String fileName) {
		int dotIndex = fileName.lastIndexOf(".");
		if (dotIndex != -1) {
			return fileName.substring(dotIndex);
		}
		return "";
	}

	public int deleteFiles(String directoryPath, String userid) {
		// 작업할 폴더에서 파일 목록을 가져옵니다.
		File directory = new File(directoryPath);
		File[] files = directory.listFiles();
		int deleteResult = 0;
		// 파일을 하나씩 확인하면서 조건에 맞는지 확인합니다.
		if (files != null) {
			for (File file : files) {
				String fileName = file.getName();
				int dotIndex = fileName.lastIndexOf('.');

				// 파일 이름에서 마지막 점의 이전 두 글자를 가져옵니다.
				if (dotIndex >= 2) {
					String prefix = fileName.substring(0, dotIndex - 2);

					// 파일 이름의 앞 부분이 마지막 점 이전의 두 글자와 동일한 경우 파일을 삭제합니다.
					if (prefix.equals(userid)) {
						if (file.delete()) {
							deleteResult++;
							System.out.println(fileName + " 파일을 삭제했습니다.");
						} else {
							System.out.println(fileName + " 파일 삭제에 실패했습니다.");
						}
					}
				}
			}
		}
		return deleteResult;
	}

	public MemberDto nullCheck(MemberDto mdto) {
		mdto.setUser_id(isEmptyOrNull(mdto.getUser_id()));
		mdto.setUser_name(isEmptyOrNull(mdto.getUser_name()));
		mdto.setUser_pw(isEmptyOrNull(mdto.getUser_pw()));
		mdto.setUser_birth(isEmptyOrNull(mdto.getUser_birth()));
		mdto.setUser_mbti(isEmptyOrNull(mdto.getUser_mbti()));
		mdto.setUser_style(isEmptyOrNull(mdto.getUser_style()));
		mdto.setUser_address(isEmptyOrNull(mdto.getUser_address()));
		mdto.setUser_career(isEmptyOrNull(mdto.getUser_career()));
		mdto.setUser_height(isEmptyOrNull(mdto.getUser_height()));
		mdto.setUser_weight(isEmptyOrNull(mdto.getUser_weight()));
		mdto.setUser_img(isEmptyOrNull(mdto.getUser_img()));
		mdto.setUser_hobby(isEmptyOrNull(mdto.getUser_hobby()));
		mdto.setUser_email(isEmptyOrNull(mdto.getUser_email()));
		mdto.setUser_nickname(isEmptyOrNull(mdto.getUser_nickname()));
		mdto.setUser_phonenumber(isEmptyOrNull(mdto.getUser_phonenumber()));
		mdto.setUser_gender(isEmptyOrNull(mdto.getUser_gender()));
		mdto.setUser_idealtype(isEmptyOrNull(mdto.getUser_idealtype()));
		mdto.setUser_pr(isEmptyOrNull(mdto.getUser_pr()));
		mdto.setUser_ps(isEmptyOrNull(mdto.getUser_ps()));
		mdto.setUser_personality(isEmptyOrNull(mdto.getUser_personality()));
		mdto.setUser_regdate(isEmptyOrNull(mdto.getUser_regdate()));
		mdto.setUser_state(isEmptyOrNull(mdto.getUser_state()));
		return mdto;
	}

	// 문자열이 비어있는지 확인 후 비어있으면 null 반환
	public String isEmptyOrNull(String input) {
		if (input == null || input.trim().isEmpty()) {
			return null;
		} else {
			return input;
		}
	}

	public int deletedate(String startId, String regdate) {
		int deletedateResult = md.deletedate(startId, regdate);
		return deletedateResult;
	}

	public String selectUserimgs(String userId) {
		String result = md.selectUserProfileImg(userId);
		return result;
	}
	
}