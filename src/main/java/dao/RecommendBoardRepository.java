package dao;

import java.util.ArrayList;

import dto.RecommendBoard;

public class RecommendBoardRepository {

	private ArrayList<RecommendBoard> listofBoards = new ArrayList<RecommendBoard>();

	private static RecommendBoardRepository instance = new RecommendBoardRepository();
	public static RecommendBoardRepository getInstance() {
		return instance;
	}
	
	public void resetAllBoard(){
		listofBoards = new ArrayList<RecommendBoard>();
	}
	
	public ArrayList<RecommendBoard> getAllBoard(){
		return listofBoards;
	}
	
	public RecommendBoard searchBoard(int num) {
		for (RecommendBoard recommendBoard : listofBoards) {
			if(recommendBoard.getNum() == num) return recommendBoard;
		}
		return new RecommendBoard();
	}
	
	public void addBoard(RecommendBoard board) {
		listofBoards.add(board);
	}
	
}
