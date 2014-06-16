﻿using System;
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
   
    public partial class PanoramaPage3 : PhoneApplicationPage
    {
        public PanoramaPage3()
        {
            InitializeComponent();
            
        }
        private void VerlaufButton_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("/Verlauf.xaml", UriKind.Relative));
        }
        private void NavigationPromillButton_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("/Promillerechner.xaml", UriKind.Relative));
        }

        private void NeueFlascheButton_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("/neueFL1.xaml", UriKind.Relative));
        }
        private void AuswahlButton_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("/PhonePage1.xaml", UriKind.Relative));
        }

        private void AlleButton_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("/PhonePage3.xaml", UriKind.Relative));
        }
    }
}