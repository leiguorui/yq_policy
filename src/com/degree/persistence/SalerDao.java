package com.degree.persistence;

import java.util.List;

import com.degree.domain.Aoto;
import com.degree.domain.Customer;
import com.degree.domain.Saler;
import com.degree.domain.User;

public interface SalerDao {
	
	public int save(Saler saler);
	public void update(Saler saler);
	public void delete(String id);
	public List<Saler> getAll();
	public Saler getLastSaler();
	public Saler getSalerById(String id);
}
