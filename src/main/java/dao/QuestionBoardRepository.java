package dao;

import java.util.ArrayList;

import dto.QuestionBoard;
import dto.RecommendBoard;

public class QuestionBoardRepository {

	private ArrayList<QuestionBoard> listofBoards = new ArrayList<QuestionBoard>();
	
	
	private static QuestionBoardRepository instance = new QuestionBoardRepository();
	public static QuestionBoardRepository getInstance() {
		return instance;
	}
	
	public void resetAllBoard(){
		listofBoards = new ArrayList<QuestionBoard>();
	}
	
	public ArrayList<QuestionBoard> getAllBoard(){
		return listofBoards;
	}
	
	public QuestionBoard searchBoard(int num) {
		for (QuestionBoard questionBoard : listofBoards) {
			if(questionBoard.getNum() == num) return questionBoard;
		}
		return new QuestionBoard();
	}
	
	public void addBoard(QuestionBoard board) {
		listofBoards.add(board);
	}
	
}
