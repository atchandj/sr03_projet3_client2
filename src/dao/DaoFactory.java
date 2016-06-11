package dao;


public class DaoFactory {
	
    public static DaoFactory getInstance() throws DAOConfigurationException {        
        DaoFactory instance = new DaoFactory();
        return instance;
    }
    
    public GetAdsDao getAddAdDao() {
        return new GetAdsDaoImpl(this);
    }
    
}
