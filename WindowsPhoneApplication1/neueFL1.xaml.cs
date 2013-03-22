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
    public partial class NeueFL1 : PhoneApplicationPage
    {
        public NeueFL1()
        {
            InitializeComponent();
        }
        private void ZuBestandButton_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("/neuFL.xaml", UriKind.Relative));
        }
        private void ZuWunschButton_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("/NeuZuWunsch.xaml", UriKind.Relative));
        }
        private void AbbrechenButton_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("/MainPanoramaPage.xaml", UriKind.Relative));
        }
    }
}
