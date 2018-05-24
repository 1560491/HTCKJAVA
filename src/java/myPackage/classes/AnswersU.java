/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myPackage.classes;

public class AnswersU {
    String question,answer,correctAns,status, opt1, opt2, opt3, opt4;
    int answer_id;

    public AnswersU() {
    }

    public AnswersU(String question, String answer, String correctAns, String status,String opt1,String opt2,String opt3,String opt4, int answer_id) {
        this.question = question;
        this.answer = answer;
        this.correctAns = correctAns;
        this.status = status;
        this.opt1 = opt1;
        this.opt2 = opt2;
        this.opt3 = opt3;
        this.opt4 = opt4;
        this.answer_id = answer_id;
    }

    public int getAnswer_id() {
        return answer_id;
    }

    public void setQuestion(int answer_id) {
        this.answer_id = answer_id;
    }    
    
    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getCorrectAns() {
        return correctAns;
    }

    public void setCorrectAns(String correctAns) {
        this.correctAns = correctAns;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    public String getOpt1() {
        return opt1;
    }

    public void setOpt1(String opt1) {
        this.opt1 = opt1;
    }    
    public String getOpt2() {
        return opt2;
    }

    public void setOpt2(String opt1) {
        this.opt2 = opt2;
    }    
    public String getOpt3() {
        return opt3;
    }

    public void setOpt3(String opt1) {
        this.opt3 = opt3;
    }
    public String getOpt4() {
        return opt4;
    }

    public void setOpt4(String opt4) {
        this.opt4 = opt4;
    }    
}
