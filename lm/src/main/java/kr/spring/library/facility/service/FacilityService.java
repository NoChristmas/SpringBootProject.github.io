package kr.spring.library.facility.service;

import java.util.List;
import java.util.Map;

import kr.spring.library.facility.vo.FacilityApplyVO;
import kr.spring.library.facility.vo.FacilityVO;

public interface FacilityService {
	//시설 추가
	public void insertFacility(FacilityVO facility);
	//시설 목록(검색)
	public List<FacilityVO> selectFacilityList(Map<String, Object> map);
	public int selectFacilityCount(Map<String, Object> map);
	//시설 번호로 시설 검색
	public FacilityVO selectFacility(Integer facility_num);
	
	//시설 이용 신청 등록
	public void insertFacilityApply(FacilityApplyVO fac_apply);
	//시설별 신청 목록
	public List<FacilityApplyVO> selectFacilityApplyList(Integer facility_num);
	//사용자별 신청 목록
	public List<FacilityApplyVO> selectFacilityApplyListByMem_num(Integer mem_num);
	
	public List<FacilityApplyVO> selectFacilityApplyListByDate(String date,Integer facility_num);
}
