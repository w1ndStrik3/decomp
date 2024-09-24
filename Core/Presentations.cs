using System;
using System.Globalization;
using System.IO;

namespace Decomp.Core
{
    public static class Presentations
    {
        public static String[] Initialize()
        {
            if (!File.Exists(Path.Combine(Common.InputPath, "presentations.txt")))
            {
                return Array.Empty<String>();
            }

            Text fId = new Text(Path.Combine(Common.InputPath, "presentations.txt"));
            fId.GetString();
            int n = fId.GetInt();
            String[] aPresentations = new String[n];
            for (int i = 0; i < n; i++)
            {
                aPresentations[i] = fId.GetWord().Remove(0, 6);
                fId.GetWord();
                fId.GetWord();

                int iEvents = fId.GetInt();

                while (iEvents != 0)
                {
                    fId.GetWord();

                    int iRecords = fId.GetInt();
                    if (iRecords != 0)
                    {
                        for (int r = 0; r < iRecords; r++)
                        {
                            fId.GetWord();
                            int iParams = fId.GetInt();
                            for (int p = 0; p < iParams; p++)
                            {
                                fId.GetWord();
                            }
                        }
                    }

                    iEvents--;
                }
            }

            fId.Close();

            return aPresentations;
        }

        public static String DecompileFlags(int iFlag)
        {
            return iFlag switch
            {
                3 => "prsntf_read_only|prsntf_manual_end_only",
                2 => "prsntf_manual_end_only",
                1 => "prsntf_read_only",
                _ => iFlag.ToString(CultureInfo.GetCultureInfo("en-US"))
            };
        }

        public static void Decompile()
        {
            Text fPresentations = new Text(Path.Combine(Common.InputPath, "presentations.txt"));
            Win32FileWriter fSource = new Win32FileWriter(Path.Combine(Common.OutputPath, "module_presentations.py"));
            fSource.WriteLine(Header.Standard);
            fSource.WriteLine(Header.Presentations);
            fPresentations.GetString();
            int iPresentations = fPresentations.GetInt();
            for (int i = 0; i < iPresentations; i++)
            {
                fSource.Write("\t(\"{0}\"", fPresentations.GetWord().Remove(0, 6));

                int iFlag = fPresentations.GetInt();
                fSource.Write(", {0}", DecompileFlags(iFlag));

                int iMesh = fPresentations.GetInt();
                if (iMesh >= 0 && iMesh < Common.Meshes.Count)
                {
                    fSource.Write(", mesh_{0}", Common.Meshes[iMesh]);
                }
                else
                {
                    fSource.Write(", {0}", iMesh);
                }

                fSource.Write(",\r\n\t[\r\n");

                int iTriggers = fPresentations.GetInt();
                for (int t = 0; t < iTriggers; t++)
                {
                    Double dInterval = fPresentations.GetDouble();
                    fSource.Write("\t\t({0},\r\n\t\t[\r\n", Common.GetTriggerParam(dInterval));
                    int iRecords = fPresentations.GetInt();
                    if (iRecords != 0)
                    {
                        Common.PrintStatement(ref fPresentations, ref fSource, iRecords, "\t\t\t");
                    }

                    fSource.Write("\t\t]),\r\n");
                }

                fSource.Write("\t]),\r\n\r\n");
            }

            fSource.Write("]");
            fSource.Close();
            fPresentations.Close();

            Common.GenerateId("ID_presentations.py", Common.Presentations, "prsnt");
        }
    }
}
