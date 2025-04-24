package service;

import com.bilbaoskp.dao.SuscriptorDAO;
import com.bilbaoskp.model.Suscriptor;

public class SuscriptorService {
	SuscriptorDAO suscriptorDao;
	
	public SuscriptorService() {
		suscriptorDao = new SuscriptorDAO();
	}
	
	public boolean addSuscriptor(Suscriptor suscriptor) {
		return suscriptorDao.addSuscriptor(suscriptor);
	}
}
