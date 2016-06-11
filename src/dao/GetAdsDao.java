package dao;

import beans.YearBook;

/* The interface of the class witch interacts with the database 
 * to add, modify or delete some elements directly inked to a year book.
 * */
public interface GetAdsDao extends AdDao {
	public YearBook getAdsByAddress(int yearBook, String street, String town, String postCode) throws DaoException;
	public YearBook getAdsByCategory(int yearBook, String category) throws DaoException;
	public YearBook getAdsByName(int yearBook, String name) throws DaoException;
}
