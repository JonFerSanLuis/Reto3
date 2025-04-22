package service;

import com.bilbaoskp.dao.SuscriptorDAO;
import com.bilbaoskp.model.Suscriptor;

public class SuscriptorService {
	SuscriptorDAO suscriptorDao;
	
	public void suscriptorService() {
		suscriptorDao = new SuscriptorDAO();
	}
	
	public boolean addSuscriptor(Suscriptor suscriptor) {
		return suscriptorDao.addSuscriptor(suscriptor);
	}
}
