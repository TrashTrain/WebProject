package dto;

import java.io.Serializable;

public class RecommendBoard implements Serializable{

	private static final long serialVersionUID = -4274700572038677000L;
	
	private String title;
	private String script;
	private String filename;
	private String username;
	private int num;
	
	public RecommendBoard() {
		super();
	}

	public RecommendBoard(String title, String script, String filename, String username, int num) {
		this.title = title;
		this.script = script;
		this.filename = filename;
		this.username = username;
		this.num = num;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getScript() {
		return script;
	}

	public void setScript(String script) {
		this.script = script;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}


}
