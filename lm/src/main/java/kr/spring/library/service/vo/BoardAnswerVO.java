package kr.spring.library.service.vo;

import kr.spring.util.DurationFromNow;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardAnswerVO {
	private int answer_num; //1:1 답변 번호
	private int ask_num; //부모 글번호
	private int mem_num; //회원번호
	private String answer_content; //내용
	private String answer_reg_date; //등록일
	private String answer_modify_date; //수정일
	
	public void setRe_date(String answer_reg_date) {
		this.answer_reg_date = DurationFromNow.getTimeDiffLabel(answer_reg_date);
	}
	public void setRe_mdate(String answer_modify_date) {
		this.answer_modify_date = DurationFromNow.getTimeDiffLabel(answer_modify_date);
	}
}
