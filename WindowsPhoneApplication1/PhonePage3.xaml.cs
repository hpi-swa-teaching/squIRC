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
    public partial class PhonePage3 : PhoneApplicationPage
    {
        public PhonePage3()
        {
            InitializeComponent();
        }

        private void NeueFlascheButton_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("/neueFL1.xaml", UriKind.Relative));
        }
        private void AuswahlButton_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("/PhonePage1.xaml", UriKind.Relative));
        }
    }
}
