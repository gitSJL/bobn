package kh.semi.bobn.community.model.vo;

public class NtPlatingListVo {
	
	//오라클-DESC NTPC;
//	PB_NO      NOT NULL NUMBER         
//	PB_CONCEPT NOT NULL VARCHAR2(20)   
//	PB_TITLE   NOT NULL VARCHAR2(300)  
//	PB_CONTENT NOT NULL VARCHAR2(3900) 
//	PB_DATE    NOT NULL TIMESTAMP(6)   
//	MEMBER_ID  NOT NULL VARCHAR2(20)  
	
	//오라클-DESC NTPI;
//	PI_NO   NOT NULL NUMBER        
//	PI_FILE NOT NULL VARCHAR2(300) 
//	PB_NO   NOT NULL NUMBER    
	
	//변수 이름짓기
	private int pbNo;
	private String pbTitle;
	private String pbContent;
	private String pbConcept;
	private String memberId;
	private String piFile;
	
	
	//생성자
	
	public NtPlatingListVo() {}
	
	public NtPlatingListVo(int pbNo, String pbTitle, String pbContent, String pbConcept, String memberId,
			String piFile) {
		super();
		this.pbNo = pbNo;
		this.pbTitle = pbTitle;
		this.pbContent = pbContent;
		this.pbConcept = pbConcept;
		this.memberId = memberId;
		this.piFile = piFile;
	}


	//toString
	
	@Override
	public String toString() {
		return "NtPlatingListVo [pbNo=" + pbNo + ", pbTitle=" + pbTitle + ", pbContent=" + pbContent + ", pbConcept="
				+ pbConcept + ", memberId=" + memberId + ", piFile=" + piFile + "]";
	}

	//게터세터
	public int getPbNo() {
		return pbNo;
	}

	public void setPbNo(int pbNo) {
		this.pbNo = pbNo;
	}

	public String getPbTitle() {
		return pbTitle;
	}

	public void setPbTitle(String pbTitle) {
		this.pbTitle = pbTitle;
	}

	public String getPbContent() {
		return pbContent;
	}

	public void setPbContent(String pbContent) {
		this.pbContent = pbContent;
	}

	public String getPbConcept() {
		return pbConcept;
	}

	public void setPbConcept(String pbConcept) {
		this.pbConcept = pbConcept;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getPiFile() {
		return piFile;
	}

	public void setPiFile(String piFile) {
		this.piFile = piFile;
	}
	
	
	
	
	
	
	
	
	

}
