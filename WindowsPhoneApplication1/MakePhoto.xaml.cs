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
    public partial class MakePhoto : PhoneApplicationPage
    {
        public MakePhoto()
        {
            InitializeComponent();
        }

        private void FertigButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Zur Bibiliothek hinzugefügt");
            this.NavigationService.Navigate(new Uri("/MainPanoramaPage.xaml", UriKind.Relative));
        }

    }
}