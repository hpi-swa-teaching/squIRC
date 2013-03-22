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

            var concentration = 20;
            var mass = 80;
            var reduction = 0.69;

            var promillegehalt = concentration / (mass * reduction);
            promillegehalt = Math.Round(promillegehalt, 2);

            Promille_Wert.Text = promillegehalt.ToString();

        }

  


          
    }
}
