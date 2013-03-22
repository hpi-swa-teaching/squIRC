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
    public partial class Getraenke : PhoneApplicationPage
    {
        public Getraenke()
        {
            InitializeComponent();
        }

        private void anderes_Click(object sender, RoutedEventArgs e)
        {

            NavigationService.Navigate(new Uri("/anderes_getränk.xaml", UriKind.Relative));
        }
        private void Bier_Click(object sender, RoutedEventArgs e)
        {


            NavigationService.Navigate(new Uri("/Promillerechner.xaml", UriKind.Relative));
        }
    }
}
