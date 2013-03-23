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
    public partial class Promille1 : PhoneApplicationPage
    {
        public Promille1()
        {
            InitializeComponent();
        }

        private void Calculate_Click(object sender, RoutedEventArgs e)
        {

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
            
            double concentration;
            double mass;
            string gender;
            using (IsolatedStorageFileStream fileStream = myISFile.OpenFile("Daten/Daten.txt", FileMode.Open, FileAccess.Read))
            {
               
                StreamReader reader = new StreamReader(fileStream);

                using (reader)
                {

                    string currResult = reader.ReadLine();
                    string[] data = currResult.Split(';');
                   // MessageBox.Show(data[0]);
                    //MessageBox.Show(data[1]);
                    //string[] data = currResult.Split(';');

                    mass = double.Parse(data[0]);
                    gender =(data[1]);
                }
            }

           double reduction;

           if (gender == "mann")
           {

               reduction = 0.69;
           }
           else
           {
               reduction = 0.55;
           }

            concentration = 20;
         

            var promillegehalt = concentration / (mass * reduction);
            promillegehalt = Math.Round(promillegehalt, 2);

            Promille_Wert.Text = promillegehalt.ToString() + "‰"; 

        }
        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("/Getraenke.xaml", UriKind.Relative));
        }




        private void Settings_Click(object sender, EventArgs e)
        {
 NavigationService.Navigate(new Uri("/rechner_einstellungen.xaml", UriKind.Relative));
        }

          
    }
}
