package kr.or.ddit.vo;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	private String enabled;			// enabled**********
	private String memDelete;
	private int memMileage;
	private Date memMemorialday;
	private String memMemorial;
	private String memLike;
	private String memJob;
	private String memMail;
	private String memHp;
	private String memComtel;
	private String memHometel;
	private String memAdd2;
	private String memAdd1;
	private String memZip;
	private Date memBir;
	private String memRegno2;
	private String memRegno1;
	private String memName;
	private String memPass;		// password ****************
	private String memId;		//  username*******************
	// 1 : N
	private List<MemberAuthVO> memberAuthVOList;
}
