import java.io.*;
import java.util.Scanner;

public class CSVConverter
{
    public static void main(String args[]) throws Exception
    {
        Scanner scann = new Scanner(System.in);
        System.out.print("File name:");
        String fil = scann.next();
        
        FileReader fread = new FileReader("/home/romankolin/Downloads/" + fil);
        FileWriter fwrit = new FileWriter("/home/romankolin/Downloads/" + fil.replace(".txt", "") + ".csv");
        int i;
        while ((i=fread.read()) != -1)
        {
            if (i == 32)
            {
                fwrit.write(",");
                fwrit.flush();
            }
            fwrit.write((char)i);
            fwrit.flush();
        }
    }
}
