class HomeController < ApplicationController
  def index
  	@layout = Layout.new
  end

  def dbtest
  
    fm = Rfm::Server.new(:host => "portal.veseguro.com",
                        :account_name => "form",
                        :password => "form",
                        :database => "Astro V1009",
                        :ssl => false)
    
    # if we were passed an :id param, it is the sort field, otherwise we find with no sort
    # because we store the results (an Rfm::RecordSet object) in an instance variable
    # (@records) they will be available on the web page.
   
      @records = fm["Astro V1009"]["GUI_PROSPECTOS"]
     
   
  end

end