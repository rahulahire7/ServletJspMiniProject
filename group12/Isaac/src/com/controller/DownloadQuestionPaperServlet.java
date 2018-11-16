package com.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xwpf.usermodel.Borders;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;

import com.dao.Jdbc;
import com.model.Question;

/**
 * Servlet implementation class DownloadQuestionPaperServlet
 */
public class DownloadQuestionPaperServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadQuestionPaperServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String category=request.getParameter("category");
		int difficulty = Integer.parseInt(request.getParameter("difficulty"));
		int no = Integer.parseInt(request.getParameter("noofquestions"));
		String title = request.getParameter("title");
		String hours = request.getParameter("hours");
		
		Jdbc x = new Jdbc();
	      List<Question> q = x.getQuestions(category, difficulty, no);

		
		
		questionPaper(title, hours,category,difficulty,no,q);
		
		answerPaper(title, hours,category,difficulty,no,q);
		
	      PrintWriter out = response.getWriter();
		out.write("<script language='javascript'>window.alert('Question Paper and Solution Generated Successfully');window.location.href='TeacherHome.jsp';</script>");

	     // response.sendRedirect("TeacherHome.jsp");
	      
	      
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public void answerPaper(String title, String hours,String category, int difficulty, int no, List<Question> l) throws IOException
	{

		//Blank Document
	      XWPFDocument document = new XWPFDocument(); 
	      
	      //Write the Document in file system
	      FileOutputStream out;
		
			out = new FileOutputStream(new File("C:\\Users\\vshadmin\\Desktop\\QuestionPaperGenerator\\papers\\answerpaper.docx"));
		
	        
	      //create Paragraph
	      XWPFParagraph paragraph = document.createParagraph();
	      XWPFRun run = paragraph.createRun();
	      run.setFontSize(18);
	      paragraph.setAlignment(ParagraphAlignment.CENTER);
	      run.setText(title+" Solution");   
	     
	      
	      
	   
	     
	    /*  Question quest = new Question();
	      List<String> ch = new ArrayList<>();
	      
	      
	      ch.add("a");
	      ch.add("b");
	      ch.add("c");
	      ch.add("d");
	      
	      quest.setQuestion("wht is jvm");
	      quest.setChoice(ch);
	      
	     List<Question> q = new ArrayList<>();
	     q.add(quest);
	     
	   quest = new Question();
	     ch = new ArrayList<>();
	      
	      
	      ch.add("aa");
	      ch.add("bs");
	      ch.add("cd");
	      ch.add("df");
	      
	      quest.setQuestion("wht is jre");
	      quest.setChoice(ch);
	     
	     
	     q.add(quest);
	     
	      */
	      
	     // Jdbc x= new Jdbc();
	 //     List<Question> q = x.getQuestions(category, difficulty, no);
	      List<Question> q = l;

	      
	      System.out.println("Get questions method "+q);

	      
	      int questCount=0;
	      
	      
	      
	     
	      for(int i = 0; i<q.size(); i++)
	      {
	    	  System.out.println("size :"+q.size());
		      System.out.println("inside servlet "+q.get(i));

	    	  
	      paragraph = document.createParagraph();
	      run = paragraph.createRun();
	      paragraph.setAlignment(ParagraphAlignment.LEFT);
	      char opt='a';
	      
	      questCount++;
	      run.setText(questCount+")"+q.get(i).getQuestion());
	      run.addBreak();
	      
	      
	      for(String c : q.get(i).getAns())
	      {
	    	  
	    	  run.setText(opt+")"+c);
	    	  opt++;
	    	  run.addBreak();
	      }
	      run.addBreak();
	      }
	                  
	   	      
	      
	      
	      document.write(out);
	      out.close();
	      System.out.println("ANSWER PAPER CREATED");
	}
	
	public void questionPaper(String title, String hours,String category, int difficulty, int no, List<Question> l) throws IOException
	{
		//Blank Document
	      XWPFDocument document = new XWPFDocument(); 
	      
	      //Write the Document in file system
	      FileOutputStream out;
		
			out = new FileOutputStream(new File("C:\\Users\\vshadmin\\Desktop\\QuestionPaperGenerator\\papers\\questionpaper.docx"));
		
	        
	      //create Paragraph
	      XWPFParagraph paragraph = document.createParagraph();
	      XWPFRun run = paragraph.createRun();
	      run.setFontSize(18);
	      paragraph.setAlignment(ParagraphAlignment.CENTER);
	      run.setText(title);   
	     
	      //create Paragraph
	      paragraph = document.createParagraph();
	      run = paragraph.createRun();
	      paragraph.setAlignment(ParagraphAlignment.RIGHT);
	      run.setText("Duration : "+hours+" hours");    
	      
	      paragraph = document.createParagraph();
	      paragraph.setBorderBottom(Borders.SINGLE);
	      
	   
	     
	    /*  Question quest = new Question();
	      List<String> ch = new ArrayList<>();
	      
	      
	      ch.add("a");
	      ch.add("b");
	      ch.add("c");
	      ch.add("d");
	      
	      quest.setQuestion("wht is jvm");
	      quest.setChoice(ch);
	      
	     List<Question> q = new ArrayList<>();
	     q.add(quest);
	     
	   quest = new Question();
	     ch = new ArrayList<>();
	      
	      
	      ch.add("aa");
	      ch.add("bs");
	      ch.add("cd");
	      ch.add("df");
	      
	      quest.setQuestion("wht is jre");
	      quest.setChoice(ch);
	     
	     
	     q.add(quest);
	     
	      */
	      
	   //   Jdbc x= new Jdbc();
	   //   List<Question> q = x.getQuestions(category, difficulty, no);
	      
	      List<Question> q = l;
	      
	      System.out.println("Get questions method "+q);

	      
	      int questCount=0;
	      
	      
	      
	     
	      for(int i = 0; i<q.size(); i++)
	      {
	    	  System.out.println("size :"+q.size());
		      System.out.println("inside servlet "+q.get(i));

	    	  
	      paragraph = document.createParagraph();
	      run = paragraph.createRun();
	      paragraph.setAlignment(ParagraphAlignment.LEFT);
	      char opt='a';
	      
	      questCount++;
	      run.setText(questCount+")"+q.get(i).getQuestion());
	      run.addBreak();
	      
	      
	      for(String c : q.get(i).getChoice())
	      {
	    	  
	    	  run.setText(opt+")"+c);
	    	  opt++;
	    	  run.addBreak();
	      }
	      run.addBreak();
	      }
	                  
	   	      
	      
	      
	      document.write(out);
	      out.close();
	      System.out.println("QUESTION PAPER CREATED");
	}

}