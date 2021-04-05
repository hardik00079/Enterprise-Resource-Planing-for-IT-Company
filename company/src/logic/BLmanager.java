package logic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;


import pojo.Clientproject;

import pojo.Attendancemaster;
import pojo.Blog;
import pojo.Expense;
import pojo.Leavemaster;


import pojo.Income;


import pojo.Registration;
import pojo.Role;


import pojo.Studproject;

import common.HibernateUtil;

public class BLmanager 
{
	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	Session s = sf.openSession();
	public void insert(Registration r)
	{
		
		Transaction t = s.beginTransaction();
		
		s.save(r);
		t.commit();
	}
	public void insertBlog(Blog b)
	{
		
		Transaction t = s.beginTransaction();
		
		s.save(b);
		t.commit();
	}
	public void projectinsert(Studproject stud)
	{
		
		
		Transaction t = s.beginTransaction();
		
		s.save(stud);
		t.commit();
	}
	public void Incomeinsert(Income in)
	{
		
		
		Transaction t = s.beginTransaction();
		
		s.save(in);
		t.commit();
	}
	public void Expenseinsert(Expense exp)
	{
		
		
		Transaction t = s.beginTransaction();
		
		s.save(exp);
		t.commit();
	}
	public void clientprojectinsert(Clientproject cp)
	{
		
		
		Transaction t = s.beginTransaction();
		
		s.save(cp);
		t.commit();
	}
	
	
	
	public void leaveinsert(Leavemaster lm)
	{
		
		Transaction t = s.beginTransaction();
		
		s.save(lm);
		t.commit();
	}
	public void attendanceinsert(Attendancemaster dv)
	{
		Transaction t = s.beginTransaction();
		
		s.save(dv);
		t.commit();
	}
	
	public Role SearchbyName(String rid)
	{
       
		
		Criteria crt=s.createCriteria(Role.class);
		
		crt.add(Restrictions.eq("role",rid));
		
		Role r =(Role)crt.uniqueResult();
		
		
		return r;
	}
	public boolean validate(String email,String pass)
	{
		Registration r = getUserByUserId(email);
		
		if(r!=null && r.getEmail().equals(email)&&r.getPassword().equals(pass))
		{
			
			return true;
		
		}
		else
		{
			return false;
		}
	}
	public Registration getUserByUserId(String email)
	{
		
			
			Transaction t  = null;
			Registration r = null;
			try
			{
				t = s.getTransaction();
				t.begin();
				Query qry = s.createQuery("from Registration where email = '"+email+"'");
				r = (Registration)qry.uniqueResult();
				t.commit();
			}
			catch(Exception e)
			{
				if(t!=null)
				{
					t.rollback();
				}
				e.printStackTrace();
			}finally{
				
				//s.close();
			}
		
		return r;
	}
	public List<Studproject> SearchAllStudProj()
	{
		Criteria crt=s.createCriteria(Studproject.class);
		
		@SuppressWarnings("unchecked")
		List<Studproject> ls=crt.list();
		
		return ls;
	}
	public List<Blog> searchNews()
	{
		Criteria crt=s.createCriteria(Blog.class);
		
		@SuppressWarnings("unchecked")
		List<Blog> ls=crt.list();
		
		return ls;
	}
	public List<Clientproject> SearchAllClientProj()
	{
		
		Criteria crt=s.createCriteria(Clientproject.class);
		
		@SuppressWarnings("unchecked")
		List<Clientproject> ls=crt.list();
		
		return ls;
	}
	
	public List<Leavemaster> Searchleaves()
	{
		Criteria crt=s.createCriteria(Leavemaster.class);
		
		@SuppressWarnings("unchecked")
		List<Leavemaster> ls=crt.list();
		
		return ls;
	}
	public List<Studproject> Searchproject(int id)
	{
       Criteria crt=s.createCriteria(Studproject.class)
		.createAlias("registration", "r")
		 .add(Restrictions.eq("r.regId",id));
		@SuppressWarnings("unchecked")
		
		List<Studproject> ls=crt.list();
		
		for(Studproject t:ls)
		{
			System.out.println(t.getProtitle());
		}
		
		return ls;
	}
	public List<Registration> SearchAllDetail()
	{
        Criteria crt=s.createCriteria(Registration.class);
		
		@SuppressWarnings("unchecked")
		List<Registration> ls=crt.list();
		
		return ls;
	}
	
	public Registration SearchbyId(int id)
	{
        Criteria crt=s.createCriteria(Registration.class);
		
		crt.add(Restrictions.eq("regId",id));
		
		Registration rg =(Registration)crt.uniqueResult();
		
	
		return rg;
	}
	public Blog Searchnews(int id)
	{
        Criteria crt=s.createCriteria(Blog.class);
		
		crt.add(Restrictions.eq("id",id));
		
		Blog b =(Blog)crt.uniqueResult();
		
	
		return b;
	}
	public List<Attendancemaster> AttendReport(String email , int month)
	{
		Criteria crt=s.createCriteria(Attendancemaster.class);
		crt.add(Restrictions.eq("email",email));
		crt.add(Restrictions.eq("month",month));
		//crt.setProjection(Projection.rowCount());
		@SuppressWarnings("unchecked")
		List<Attendancemaster> dv = crt.list();

		for(Attendancemaster t:dv)
		{
			System.out.println(t.getDay());
		}
		
		return dv;
	}
	
	public List<Income> IncomeReport(int month)
	{
		Criteria crt=s.createCriteria(Income.class);
		crt.add(Restrictions.eq("month",month));
		@SuppressWarnings("unchecked")
		List<Income> dv = crt.list();

		for(Income t:dv)
		{
			System.out.println(t.getDay());
		}
		
		return dv;
	}
	public List<Income> Incometotal(int month)
	{
		Criteria crt=s.createCriteria(Income.class);
		crt.add(Restrictions.eq("month",month));
		crt.setProjection(Projections.sum("amount"));
		@SuppressWarnings("unchecked")
		List<Income> dv = crt.list();

		
		
		return dv;
	}
	public List<Expense> ExpenseReport(int month)
	{
		Criteria crt=s.createCriteria(Expense.class);
		crt.add(Restrictions.eq("month",month));
		@SuppressWarnings("unchecked")
		List<Expense> dv = crt.list();

		for(Expense t:dv)
		{
			System.out.println(t.getDay());
		}
		
		return dv;
	}
	public List<Expense> Expensetotal(int month)
	{
		Criteria crt=s.createCriteria(Expense.class);
		crt.add(Restrictions.eq("month",month));
		crt.setProjection(Projections.sum("amount"));
		@SuppressWarnings("unchecked")
		List<Expense> dv = crt.list();

		
		
		return dv;
	}
	public Studproject Searchpro(int id)
	{
        Criteria crt=s.createCriteria(Studproject.class);
		
		crt.add(Restrictions.eq("proid",id));
		
		Studproject u =(Studproject)crt.uniqueResult();
		
		
		return u;
	}
	public Leavemaster SearchLeave(int id)
	{
        Criteria crt=s.createCriteria(Leavemaster.class);
		
		crt.add(Restrictions.eq("id",id));
		
		Leavemaster lm =(Leavemaster)crt.uniqueResult();
		
		
		return lm;
	}
	public Clientproject SearchClientpro(int id)
	{
       Criteria crt=s.createCriteria(Clientproject.class);
		
		crt.add(Restrictions.eq("proid",id));
		
		Clientproject u =(Clientproject)crt.uniqueResult();
		
		
		return u;
	}
	public void delete(Registration rg)
	{
		Transaction t = s.beginTransaction();
		
		s.delete(rg);
		t.commit();
	}
	public void delete(Blog b)
	{
		Transaction t = s.beginTransaction();
		
		s.delete(b);
		t.commit();
	}
	public void delete(Studproject stud)
	{
		Transaction t = s.beginTransaction();
		
		s.delete(stud);
		t.commit();
	}
	public void delete(Clientproject clnt)
	{
		Transaction t = s.beginTransaction();
		
		s.delete(clnt);
		t.commit();
	}
	public void update(Registration r)
	{
		Transaction t = s.beginTransaction();
		
		s.update(r);
		t.commit();
	}
	public void updateproj(Studproject stud)
	{
		Transaction t = s.beginTransaction();
		
		s.update(stud);
		t.commit();
	}
	public void updateleave(Leavemaster l)
	{
		
		Transaction t = s.beginTransaction();
		s.update(l);
		t.commit();
	}
	public void updateclntproj(Clientproject clnt)
	{
		Transaction t = s.beginTransaction();
		
		s.update(clnt);
		t.commit();
	}
	public static String getSingleValue(String q)
	{
		String ans="";
		
		try
		{
			Connection con=null;
			Statement st=null;
			ResultSet rs=null;
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/robonet","root","1234");
			
			st = con.createStatement();
			
			rs= st.executeQuery(q);
		
			if(rs.next())
			{
				ans = rs.getString(1);
			}
			rs.close();
			con.close();
		}catch(Exception E)
		{
			E.printStackTrace();
		}
if(ans==null)
	ans="0";
		
		return ans;
	}
	public void updateBlog(Blog bg) {
		// TODO Auto-generated method stub
	Transaction t = s.beginTransaction();
		
		s.update(bg);
		t.commit();
	}

}
