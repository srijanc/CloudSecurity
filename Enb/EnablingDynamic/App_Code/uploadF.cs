using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for upload
/// </summary>
public class uploadF
{
	public uploadF()
	{
		//
		// TODO: Add constructor logic here
		//
       
	}
    
    public string savefile(FileUpload FileUpload)
    {
        string fname = "";
        if (FileUpload.HasFile)
        {
            string filename = DateTime.Now.ToString("MMddyyyyHHmmss");
            filename += Path.GetFileName(FileUpload.FileName);
            string extension = System.IO.Path.GetExtension(filename);

            try
            {
                if (extension == ".txt" || extension == ".doc" || extension == ".DOC" || extension == ".docx" || extension == ".DOCX" || extension == ".TXT")
                {
                    FileUpload.SaveAs(System.Web.HttpContext.Current.Server.MapPath("~/temp/") + filename);


                    return filename;
                }
            }
            catch (Exception ex)
            {
                Utils.ShowAlertMessage("Upload status: The file could not be uploaded.");
            }
        }
        else
        {
            Utils.ShowAlertMessage("Select File to Upload");
        }
        return "file missing";
    }
}