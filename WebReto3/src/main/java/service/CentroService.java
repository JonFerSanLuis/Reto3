package service;

import com.bilbaoskp.dao.CentroDAO;
import com.bilbaoskp.model.Centro;

public class CentroService {
    CentroDAO centroDao;

    public CentroService() {
        centroDao = new CentroDAO();
    }

    public boolean addCentro(Centro centro) {
        return centroDao.addCentro(centro);
    }
}
