package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.YearBook;
import dao.DAOConfigurationException;
import dao.DaoException;
import dao.DaoFactory;
import dao.GetAdsDao;

public class GetAds extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String GET_ADS_JSP = "/WEB-INF/get_ads.jsp";
	private static final String DISPLAY_ADS_JSP = "/WEB-INF/display_ads.jsp";
       
	private GetAdsDao getAdsDao;
    private int yearBook;
    
    public GetAds() {
        super();
        this.yearBook = 1;
    }

    public void init() throws ServletException {
        DaoFactory daoFactory;
		try {
			daoFactory = DaoFactory.getInstance();
			this.getAdsDao = daoFactory.getAddAdDao();
		} catch (DAOConfigurationException e) {
			e.printStackTrace();
		} 
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String errorMessage = null;
		String action = request.getParameter("paction");
		request.setAttribute("yearBook", this.yearBook);
		if(action!= null){
			switch(action){
				case "getByName" :{
					this.getServletContext().getRequestDispatcher(GET_ADS_JSP).forward(request, response);
					break;
				}
				
				case "getByAddress":{
					String street = request.getParameter("street");
					String town = request.getParameter("town");
					String postCode = request.getParameter("postCode");
					try {
						YearBook y = this.getAdsDao.getAdsByAddress(yearBook, street, town, postCode);
						System.out.println(y.getAds());
						request.setAttribute("yearbook", y);
						this.getServletContext().getRequestDispatcher(DISPLAY_ADS_JSP).forward(request, response);
					} catch (DaoException e) {
						errorMessage = e.getMessage();
						request.setAttribute("errorMessage", errorMessage);
					}
					break;
				}
				default:{
					try {
						ArrayList<String> postCodes = this.getAdsDao.getPostCodes(this.yearBook);
						ArrayList<String> streetsNames = this.getAdsDao.getStreetsNames(this.yearBook);
						ArrayList<String> townsNames = this.getAdsDao.getTownsNames(this.yearBook);
						request.setAttribute("postCodes", postCodes);
						request.setAttribute("streetsNames", streetsNames);
						request.setAttribute("townsNames", townsNames);
					} catch (DaoException e) {
						errorMessage = e.getMessage();
						request.setAttribute("errorMessage", errorMessage);
					}
					this.getServletContext().getRequestDispatcher(GET_ADS_JSP).forward(request, response);
					break;
				}
			}
		}
		else{
			try {
				ArrayList<String> postCodes = this.getAdsDao.getPostCodes(this.yearBook);
				ArrayList<String> streetsNames = this.getAdsDao.getStreetsNames(this.yearBook);
				ArrayList<String> townsNames = this.getAdsDao.getTownsNames(this.yearBook);
				YearBook yearBookBean = this.getAdsDao.getAdsNames(this.yearBook);
				ArrayList<String> categoriesNames = this.getAdsDao.getCategoriesNames(this.yearBook);
				request.setAttribute("categoriesNames", categoriesNames);
				request.setAttribute("yearBookBean", yearBookBean);
				request.setAttribute("postCodes", postCodes);
				request.setAttribute("streetsNames", streetsNames);
				request.setAttribute("townsNames", townsNames);
			} catch (DaoException e) {
				errorMessage = e.getMessage();
				request.setAttribute("errorMessage", errorMessage);
			}
			this.getServletContext().getRequestDispatcher(GET_ADS_JSP).forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
