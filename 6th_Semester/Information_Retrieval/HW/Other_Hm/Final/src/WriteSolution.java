import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Scanner;

public class WriteSolution {

    public void Files_10(){
        File folder;
        try{
            folder = new File("C:/Final/word_directory/10Doc");
            if(!folder.exists()){
                folder.mkdir();
                for(int i=1; i<=10; i++){
                    folder = new File("C:/Final/word_directory/10Doc/file"+i+".txt");
                    folder.createNewFile();
                }
            }

        }catch (Exception e){
            System.out.println("problem in making 10 documents block ");
        }
    }

    public void Final_Solution(){
        try{
            File file;
            FileInputStream fileStream;
            InputStreamReader input ;
            BufferedReader reader ;
            Scanner in;
            ArrayList mainarray;

            for(int v=1; v<=10; v++){

                file = new File("C:/Final/word_directory/10Doc/file"+v+".txt");
                fileStream = new FileInputStream(file);
                input = new InputStreamReader(fileStream);
                reader = new BufferedReader(input);
                in = new Scanner(file);

                int line_no = 0;
                int wordCount = 0;

                String line;
                System.out.println("file "+v+" line Number, repetition times, repetition position ");
                System.out.println("                line     repetition_times     position");

                while((line = reader.readLine()) != null){
                    mainarray = new ArrayList();
                    line_no++;
                    String[] words = line.split(" ");
                    int p =0;
                    while(p <=words.length-1){
                        String s = in.next();
                        mainarray.add(s);
                        p++;
                    }
                    wordCount = wordCount + words.length;
                    int repeat = 0;
                    int position =0;
                    for(int g = 0; g<=line_no; g++){
                        for(int x = 0; x<=mainarray.size()-1; x++){

                            for(int f = 0; f<x; f++){
                                String i = mainarray.get(x).toString();
                                if(i.equals(mainarray.get(f))){
                                    x++;
                                }
                            }
                            String s = mainarray.get(x).toString();
                            for(int e = x+1; e<mainarray.size()-1; e++){

                                if(s.equals(mainarray.get(e))){
                                    repeat++;
                                    position = e;
                                }
                            }
                            System.out.println(mainarray.get(x)+"                ["+line_no+"       "+repeat+"         "+position+"]");
                            repeat =0;
                            position = 0;
                        }
                    }
                }
                System.out.println("total line "+line_no);
                System.out.println("total "+wordCount+" words");
            }
        }catch (Exception e){
            System.out.println("problem in reading 10 doc file");
        }
    }
}
