using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FindYourCar.Site
{
	public partial class Upload1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void sdsNewFile_Inserting(object sender, SqlDataSourceCommandEventArgs e)
        {
           
        }

        protected void sdsNewFile_Inserting1(object sender, SqlDataSourceCommandEventArgs e)
        {
            FileUpload fu = (FileUpload)(fvNewFile.FindControl("fuNewFile"));
            DropDownList ddl = (DropDownList)(fvNewFile.FindControl("ddlPostType"));

            if (fu.HasFile == true)
            {
                //Save file to HDD
                string fileName = Path.GetFileName(fu.FileName);
                string extent = Path.GetFileName(ddl.SelectedItem.Text);
                string fileurl = "~/Image/" + extent + "/" + fileName;
                fu.SaveAs(Server.MapPath(fileurl));

                //Update fileurl field before insert command execute.
                e.Command.Parameters["@Photo"].Value = fileurl;
            }
        }
    }
}