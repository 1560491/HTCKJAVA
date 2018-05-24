
package myPackage.classes;


public class Result {
   private int userId,examId;
   private String firstName,lastName,userName,stdId,cName,tMarks,obtMarks,date,startTime,endTime,examTime,status;

   public Result(){
       
   }
    public Result( String firstName, String lastName, String userName, int examId, String stdId,String cName, String tMarks, String obtMarks, String date, String startTime, String endTime, String examTime, String status) {
//        this.userId = userId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
//        this.email = email;
//        this.password = password;
//        this.type = type;
//        this.contact = contact;
//        this.city = city;
//        this.address = address;
        this.examId = examId;
        this.stdId = stdId;
        this.cName=cName;
        this.tMarks = tMarks;
        this.obtMarks = obtMarks;
        this.date = date;
        this.startTime = startTime;
        this.endTime = endTime;
        this.examTime = examTime;
        this.status = status;
    }
    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

//    public int getstdId() {
//        return stdId;
//    }

    public int getExamId() {
        return examId;
    }

    public void setExamId(int examId) {
        this.examId = examId;
    }

    public String getStdId() {
        return stdId;
    }

    public void setStdId(String stdId) {
        this.stdId = stdId;
    }

    public String gettMarks() {
        return tMarks;
    }

    public void settMarks(String tMarks) {
        this.tMarks = tMarks;
    }

    public String getObtMarks() {
        return obtMarks;
    }

    public void setObtMarks(String obtMarks) {
        this.obtMarks = obtMarks;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getExamTime() {
        return examTime;
    }

    public void setExamTime(String examTime) {
        this.examTime = examTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
        public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

   

}
