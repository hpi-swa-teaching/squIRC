using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using Microsoft.Phone.Controls;
using System.IO.IsolatedStorage;
using System.IO;


namespace WindowsPhoneApplication1
{
    public partial class rechner_einstellungen : PhoneApplicationPage
    {
        public rechner_einstellungen()
        {
            InitializeComponent();
        }

        private void fertig_Click(object sender, EventArgs e)
        {
            // Daten Erfassen
            
            float gewicht = Convert.ToSingle(weight.Text);

            bool male = false;
            bool female = false;
            

            if (maennlich.IsChecked.Value) 
                {
                male = true;
                female = false;
            }

            if (weiblich.IsChecked.Value) {
                male = false;
                female = true;
            }

            string geschlecht="";
            
            if (male==true){
                geschlecht = "mann";
            }
            if (female==true) {
                geschlecht = "frau";
            }


                // --> Daten Speichern

           
                IsolatedStorageFile myISFile;
                String directoryName = "Daten";
                myISFile = IsolatedStorageFile.GetUserStoreForApplication();
                if (!string.IsNullOrEmpty(directoryName)&&
                    !myISFile.DirectoryExists(directoryName))
                {
                    myISFile.CreateDirectory(directoryName);
                }

                if (!myISFile.FileExists("Daten/Daten.txt"))
                {
                    var isolated = myISFile.CreateFile("Daten/Daten.txt");
                    isolated.Close();
                }


                using (IsolatedStorageFileStream fileStream = myISFile.OpenFile("Daten/Daten.txt", FileMode.Create, FileAccess.Write))
                {
                    StreamWriter writer = new StreamWriter(fileStream);
                    writer.WriteLine(gewicht.ToString() + ";" + geschlecht);
                    writer.Close();
                }


                MessageBox.Show("Deine Daten wurden gespeichert!");
           
        }



     
    }
}
