package com.degree.persistence;

import java.util.List;

import com.degree.domain.Aoto;
import com.degree.domain.User;

public interface AotoDao {
	
	public int save(Aoto aoto);
	public void update(Aoto aoto);
	public void delete(String id);
	public List<Aoto> getAll();
	public Aoto getLastAoto();
	public Aoto getAotoById(String id);
}
