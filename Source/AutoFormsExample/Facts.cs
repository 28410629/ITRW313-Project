using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using CLIPSNET;

namespace AutoFormsExample
{
    public partial class Facts : Form
    {
        private List<FactInstance> factList;
        private string filePath = Directory.GetCurrentDirectory() + "\\data.txt";
        private AutoFormsExample main;

        public Facts()
        {
            InitializeComponent();
            
        }

        public void updateMain(AutoFormsExample auto)
        {
            main = auto;
        }

        private void Facts_Load(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
        }

        public void updateFacts(List<FactInstance> list)
        {
            listBox1.Items.Clear();
            factList = list;
            for (int i = 0; i < factList.Count; i++)
            {
                string type = factList[i].RelationName;
                if (!(type.Equals("text-for-id") || type.Equals("greeting") || type.Equals("UI-state")))
                {
                    string s = factList[i].Name + " " + factList[i].RelationName + ": ";
                    List<SlotValue> factSlots = factList[i].GetSlotValues();
                    for (int j = 0; j < factList[i].SlotCount; j++)
                    {
                        s += factSlots[j].SlotName + " " + factSlots[j].Contents + ", ";
                    }
                    Console.WriteLine(s);
                    listBox1.Items.Add(s);
                }
            }
        }

        public void displayMessage(bool display)
        {
            if (display)
            {
                main.updateDisplayMessage(false);
                try
                {
                    string newFile = System.Environment.GetFolderPath(System.Environment.SpecialFolder.DesktopDirectory) + "\\VDES-" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + "-" + DateTime.Now.Hour + DateTime.Now.Minute + DateTime.Now.Second + "-Session.txt";
                    File.Move(filePath, newFile);
                    DialogResult result = MessageBox.Show("Repair found, session output written to: \n\n" + newFile + "\n\nTo see the nearest vehicle repair shop, press 'Yes'.", "Conclusion reached!", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
                    if (result == DialogResult.Yes)
                    {
                        Process.Start("https://www.google.com/maps/search/auto+repair/");
                    }
                   
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
                }
            }
        }
    }
}
