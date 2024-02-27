package com.test.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "emp_details")
public class Empdetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String compname;
	private String empcode;
//	private long mobileno;
	private String empname;
	private String dob;
	private String doj;
	private String gender;
	private String bloodgroup;
	private String nationality;
	private String religion;
	private String location;
	private String empemail;
	private String personalemail;
	private String deptname;
	private String desig;
	private String rm;
	private String ssc;
	private String hsc;
	private String graduation;
	private String master;
	private String other;
	private String courses;
	private String caddress;
	private String paddress;
	private String xcompnay;
	private String pcdesign;
	private String pcctc;
	private String preexp;
	private String btlexp;
	private String totexp;
	private String aadhar;
	private String pan;
	private String bankname;
	private String accountno;
	private String ifsc;
	private String depts;
	private String depts1;
	private String depts2;
	private String depts3;
	private String depts4;
	private String depts5;
	private String depts6;
	private String emgncyname;
	private String emgncyrel;
	private String emgncycon;
	private String una;
	private String pf;
	private String esic;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompname() {
		return compname;
	}
	public void setCompname(String compname) {
		this.compname = compname;
	}
	public String getEmpcode() {
		return empcode;
	}
	public void setEmpcode(String empcode) {
		this.empcode = empcode;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	public String getDoj() {
		return doj;
	}
	public void setDoj(String doj) {
		this.doj = doj;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmpemail() {
		return empemail;
	}
	public void setEmpemail(String empemail) {
		this.empemail = empemail;
	}
	public String getPersonalemail() {
		return personalemail;
	}
	public void setPersonalemail(String personalemail) {
		this.personalemail = personalemail;
	}
	
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getDesig() {
		return desig;
	}
	public void setDesig(String desig) {
		this.desig = desig;
	}
	public String getRm() {
		return rm;
	}
	public void setRm(String rm) {
		this.rm = rm;
	}
	public String getSsc() {
		return ssc;
	}
	public void setSsc(String ssc) {
		this.ssc = ssc;
	}
	public String getHsc() {
		return hsc;
	}
	public void setHsc(String hsc) {
		this.hsc = hsc;
	}
	public String getGraduation() {
		return graduation;
	}
	public void setGraduation(String graduation) {
		this.graduation = graduation;
	}
	public String getMaster() {
		return master;
	}
	public void setMaster(String master) {
		this.master = master;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public String getCourses() {
		return courses;
	}
	public void setCourses(String courses) {
		this.courses = courses;
	}
	public String getCaddress() {
		return caddress;
	}
	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}
	public String getPaddress() {
		return paddress;
	}
	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}
	public String getXcompnay() {
		return xcompnay;
	}
	public void setXcompnay(String xcompnay) {
		this.xcompnay = xcompnay;
	}
	public String getPcdesign() {
		return pcdesign;
	}
	public void setPcdesign(String pcdesign) {
		this.pcdesign = pcdesign;
	}
	public String getPcctc() {
		return pcctc;
	}
	public void setPcctc(String pcctc) {
		this.pcctc = pcctc;
	}
	public String getPreexp() {
		return preexp;
	}
	public void setPreexp(String preexp) {
		this.preexp = preexp;
	}
	public String getBtlexp() {
		return btlexp;
	}
	public void setBtlexp(String btlexp) {
		this.btlexp = btlexp;
	}
	public String getTotexp() {
		return totexp;
	}
	public void setTotexp(String totexp) {
		this.totexp = totexp;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public String getPan() {
		return pan;
	}
	public void setPan(String pan) {
		this.pan = pan;
	}
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	public String getAccountno() {
		return accountno;
	}
	public void setAccountno(String accountno) {
		this.accountno = accountno;
	}
	public String getIfsc() {
		return ifsc;
	}
	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}
	public String getDepts() {
		return depts;
	}
	public void setDepts(String depts) {
		this.depts = depts;
	}
	public String getDepts1() {
		return depts1;
	}
	public void setDepts1(String depts1) {
		this.depts1 = depts1;
	}
	public String getDepts2() {
		return depts2;
	}
	public void setDepts2(String depts2) {
		this.depts2 = depts2;
	}
	public String getDepts3() {
		return depts3;
	}
	public void setDepts3(String depts3) {
		this.depts3 = depts3;
	}
	public String getDepts4() {
		return depts4;
	}
	public void setDepts4(String depts4) {
		this.depts4 = depts4;
	}
	public String getDepts5() {
		return depts5;
	}
	public void setDepts5(String depts5) {
		this.depts5 = depts5;
	}
	public String getDepts6() {
		return depts6;
	}
	public void setDepts6(String depts6) {
		this.depts6 = depts6;
	}
	public String getEmgncyname() {
		return emgncyname;
	}
	public void setEmgncyname(String emgncyname) {
		this.emgncyname = emgncyname;
	}
	public String getEmgncyrel() {
		return emgncyrel;
	}
	public void setEmgncyrel(String emgncyrel) {
		this.emgncyrel = emgncyrel;
	}
	public String getEmgncycon() {
		return emgncycon;
	}
	public void setEmgncycon(String emgncycon) {
		this.emgncycon = emgncycon;
	}
	public String getUna() {
		return una;
	}
	public void setUna(String una) {
		this.una = una;
	}
	public String getPf() {
		return pf;
	}
	public void setPf(String pf) {
		this.pf = pf;
	}
	public String getEsic() {
		return esic;
	}
	public void setEsic(String esic) {
		this.esic = esic;
	}
	
	
	@Override
	public String toString() {
		return "Empdetails [id=" + id + ", compname=" + compname + ", empcode=" + empcode + ", empname=" + empname
				+ ", dob=" + dob + ", doj=" + doj + ", gender=" + gender + ", bloodgroup=" + bloodgroup
				+ ", nationality=" + nationality + ", religion=" + religion + ", location=" + location + ", empemail="
				+ empemail + ", personalemail=" + personalemail + ", deptname=" + deptname + ", desig=" + desig
				+ ", rm=" + rm + ", ssc=" + ssc + ", hsc=" + hsc + ", graduation=" + graduation + ", master=" + master
				+ ", other=" + other + ", courses=" + courses + ", caddress=" + caddress + ", paddress=" + paddress
				+ ", xcompnay=" + xcompnay + ", pcdesign=" + pcdesign + ", pcctc=" + pcctc + ", preexp=" + preexp
				+ ", btlexp=" + btlexp + ", totexp=" + totexp + ", aadhar=" + aadhar + ", pan=" + pan + ", bankname="
				+ bankname + ", accountno=" + accountno + ", ifsc=" + ifsc + ", depts=" + depts + ", depts1=" + depts1
				+ ", depts2=" + depts2 + ", depts3=" + depts3 + ", depts4=" + depts4 + ", depts5=" + depts5
				+ ", depts6=" + depts6 + ", emgncyname=" + emgncyname + ", emgncyrel=" + emgncyrel + ", emgncycon="
				+ emgncycon + ", una=" + una + ", pf=" + pf + ", esic=" + esic + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
