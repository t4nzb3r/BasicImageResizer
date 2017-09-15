using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

namespace NoggoNoggoResizer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        int height;
        int width;

        int nheight;
        int nwidth;

        public MainWindow()
        {
            InitializeComponent();

            LblHeight.Content = "";
            LblWidth.Content = "";
            LblNHeight.Content = "";
            LblNWidth.Content = "";
        }

        private void BtnOpenFile_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.Multiselect = false;
            ofd.Filter = "Pictures|*.img; *.png; *.jpg; *.jpeg";

            ofd.ShowDialog();

            String path = ofd.FileName;

            if (File.Exists(path))
            {
                TxtBoxPath.Text = path;

                System.Drawing.Image img = System.Drawing.Image.FromFile(path);

                height = img.Height;
                width = img.Width;

                LblHeight.Content = img.Height;
                LblWidth.Content = img.Width;

                LblNHeight.Content = img.Height;
                LblNWidth.Content = img.Width;

                TxtBoxFactorHeight.Text = "1";
                TxtBoxFactorWidth.Text = "1";
            }
        }

        private void TxtBoxFactorHeight_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                LblNHeight.Content = Math.Round(height * double.Parse(TxtBoxFactorHeight.Text));
                nheight = (int)Math.Round(height * double.Parse(TxtBoxFactorHeight.Text));
            }
            catch (Exception) { }
        }

        private void TxtBoxFactorWidth_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                LblNWidth.Content = Math.Round(width * double.Parse(TxtBoxFactorWidth.Text));
                nwidth = (int)Math.Round(width * double.Parse(TxtBoxFactorWidth.Text));
            }
            catch (Exception) { }
        }

        private void BtnResize_Click(object sender, RoutedEventArgs e)
        {
            System.Drawing.Image image = Bitmap.FromFile(TxtBoxPath.Text);

            var destRect = new System.Drawing.Rectangle(0, 0, nwidth, nheight);
            var destImage = new Bitmap(nwidth, nheight);

            destImage.SetResolution(image.HorizontalResolution, image.VerticalResolution);

            using(var graphics = Graphics.FromImage(destImage))
            {
                graphics.CompositingMode = System.Drawing.Drawing2D.CompositingMode.SourceCopy;
                graphics.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
                graphics.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.NearestNeighbor;
                graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.None;
                graphics.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;

                using(var wrapMode = new ImageAttributes())
                {
                    wrapMode.SetWrapMode(System.Drawing.Drawing2D.WrapMode.TileFlipXY);
                    graphics.DrawImage(image, destRect, 0, 0, image.Width, image.Height, GraphicsUnit.Pixel, wrapMode);
                }
            }

            String path = System.IO.Path.GetDirectoryName(TxtBoxPath.Text);
            String name = System.IO.Path.GetFileNameWithoutExtension(TxtBoxPath.Text);
            String ext = System.IO.Path.GetExtension(TxtBoxPath.Text);

            destImage.Save(path + "\\" + name + "_" + nwidth + "x" + nheight + ext);
        }
    }
}
