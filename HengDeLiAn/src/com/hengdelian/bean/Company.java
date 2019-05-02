package com.hengdelian.bean;

public class Company {
	public int id; //id
	public String username; //用户名
	public String password; //密码
	public String tel; //联系人电话
	public String partment; //所在部门
	public String seat; //座机
	public String mail; //邮箱
	public String companyname; //公司名称
	public String location; //公司所在地
	public String addresss; //公司地址
	public String ip; //公司网址
	public String industry; //公司行业
	public String nature; //公司性质
	public String license; //营业执照图片
	public String tax; //税务登记证图
	public String organization; //组织机构代码证
	public String licensenum; //营业执照注册号
	public String taxcode; //输入税务登记证
	public String organizationcode; //输入组织机构代码
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPartment() {
		return partment;
	}
	public void setPartment(String partment) {
		this.partment = partment;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getAddresss() {
		return addresss;
	}
	public void setAddresss(String addresss) {
		this.addresss = addresss;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getNature() {
		return nature;
	}
	public void setNature(String nature) {
		this.nature = nature;
	}
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public String getTax() {
		return tax;
	}
	public void setTax(String tax) {
		this.tax = tax;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getLicensenum() {
		return licensenum;
	}
	public void setLicensenum(String licensenum) {
		this.licensenum = licensenum;
	}
	public String getTaxcode() {
		return taxcode;
	}
	public void setTaxcode(String taxcode) {
		this.taxcode = taxcode;
	}
	public String getOrganizationcode() {
		return organizationcode;
	}
	public void setOrganizationcode(String organizationcode) {
		this.organizationcode = organizationcode;
	}
	@Override
	public String toString() {
		return "Company [id=" + id + ", username=" + username + ", password=" + password + ", tel=" + tel
				+ ", partment=" + partment + ", seat=" + seat + ", mail=" + mail + ", companyname=" + companyname
				+ ", location=" + location + ", addresss=" + addresss + ", ip=" + ip + ", industry=" + industry
				+ ", nature=" + nature + ", license=" + license + ", tax=" + tax + ", organization=" + organization
				+ ", licensenum=" + licensenum + ", taxcode=" + taxcode + ", organizationcode=" + organizationcode
				+ "]";
	}
	public Company(int id, String username, String password, String tel, String partment, String seat, String mail,
			String companyname, String location, String addresss, String ip, String industry, String nature,
			String license, String tax, String organization, String licensenum, String taxcode,
			String organizationcode) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.tel = tel;
		this.partment = partment;
		this.seat = seat;
		this.mail = mail;
		this.companyname = companyname;
		this.location = location;
		this.addresss = addresss;
		this.ip = ip;
		this.industry = industry;
		this.nature = nature;
		this.license = license;
		this.tax = tax;
		this.organization = organization;
		this.licensenum = licensenum;
		this.taxcode = taxcode;
		this.organizationcode = organizationcode;
	}
	public Company() {
		// TODO Auto-generated constructor stub
	}
}
