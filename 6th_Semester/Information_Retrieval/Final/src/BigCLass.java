import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

public class BigCLass {
    private int count =0;

    ArrayList list =new ArrayList();
   // HashMap<Integer,String> map = new HashMap<>();

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void ReadBigFile(){

        File file;
        Scanner in;

        try{
            // file = new File();
            file = new File("D:/CQUT/Information_retrieval/BigWork/word_directory/Large_Document.txt");
            in = new Scanner(file);
            //int i=0;
            while(in.hasNext()){
                String s = in.next();
                list.add(s);
                //map.put(count,s);
                count ++;
                //i++;

            }
            System.out.println("total "+count+" words in the Large Document");

        }
        catch (FileNotFoundException e){
                System.out.println("File not Found ");
            }
            catch (IOException e) {
                e.printStackTrace();
            }

    }

    public void MakeDirAnd10FIle(){
        File f;
        try{
            f = new File("D:/CQUT/Information_retrieval/BigWork/word_directory/10Doc");
            if(!f.exists()){
                f.mkdir();
                for(int i=1; i<=10; i++){
                    f = new File("D:/CQUT/Information_retrieval/BigWork/word_directory/10Doc/file"+i+".txt");
                    f.createNewFile();
                }
            }

        }catch (Exception e){
            System.out.println("problem in making 10 documents block ");
        }
    }
    public void WriteToFile(){

        try{
            File file;
            FileWriter fr;
            Writer output;
            for(int i=1; i<=10; i++){
                file = new File("D:/CQUT/Information_retrieval/BigWork/word_directory/10Doc/file"+i+".txt");
                fr = new FileWriter(file);
                output =new BufferedWriter(fr);

                int a =(int) Math.floor(Math.random() * (2000 - 1500) + 1500);
                int b = a - 500; // random int 500
                //System.out.println(a+" "+b);

                for(int j =b; j<=a; j++){

                    output.write(list.get(j).toString()+" ");
                    String str = (String) list.get(j);

                    for (int d=0; d<str.length(); d++) {

                        if(str.length()==1)
                            break;
                        else if (str.charAt(d) == '.') {
                            output.write("\n");
                        }
                    }
                }
                output.close();
            }
            System.out.println("Properly inputted 500 words in 10 documents from the array List");
        }catch (Exception e){
            System.out.println("problem in write to file ");
        }
    }

    // work for reading 10 txt file

    public void Reading10DocFile(){
        try{
            File file;
            FileInputStream fileStream;
            InputStreamReader input ;
            BufferedReader reader ;
            Scanner in;
            ArrayList tendoc = new ArrayList();

            for(int v=1; v<=10; v++){

                file = new File("D:/CQUT/Information_retrieval/BigWork/word_directory/10Doc/file"+v+".txt");
               // file = new File("D:/CQUT/Information_retrieval/BigWork/word_directory/test.txt");
                fileStream = new FileInputStream(file);
                input = new InputStreamReader(fileStream);
                reader = new BufferedReader(input);
                in = new Scanner(file);

                int line_no = 0;
                int wordCount = 0;
                int m = 0;
                String line;
                System.out.println("file "+v+" line Number, repetition times, repetition position ");
                System.out.println("                line     repetition_times     position");
                while((line = reader.readLine()) != null){
                    tendoc = new ArrayList();
                    line_no++;
                    String[] words = line.split(" ");
                    int h =0;
                    while(h <=words.length-1){
                        String s = in.next();
                        tendoc.add(s);
                        h++;
                    }
                    wordCount = wordCount + words.length;
                    int repeat = 0;
                    int position =0;

                    for(int g = 0; g<=line_no; g++){
                        for(int w = 0; w<=tendoc.size()-1; w++){

                            for(int f = 0; f<w; f++){
                                String i = tendoc.get(w).toString();
                                if(i.equals(tendoc.get(f))){
                                    w =w+1;
                                }

                            }

                            String s = tendoc.get(w).toString();
                            for(int e = w+1; e<tendoc.size()-1; e++){

                                if(s.equals(tendoc.get(e))){
                                    repeat++;
                                    position = e;
                                }
                            }
                            System.out.println(tendoc.get(w)+"        ["+line_no+"       "+repeat+"         "+position+"]");
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
