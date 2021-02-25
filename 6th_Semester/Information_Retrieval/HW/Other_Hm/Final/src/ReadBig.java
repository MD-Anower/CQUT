import java.io.*;
import java.util.ArrayList;
import java.util.Scanner;

import static com.sun.tools.attach.VirtualMachine.list;

public class ReadBig {
    private int words_count =0;
    ArrayList BigList =new ArrayList();

    public ReadBig() {

    }

    public void BigFile(){
        try{
            File file;
            Scanner in;
            file = new File("C:/Final/word_directory/Large_Document.txt");
            in = new Scanner(file);
            while(in.hasNext()){
                String s = in.next();
                BigList.add(s);
                words_count ++;
            }
            System.out.println("total "+words_count+" words in the Large Document");

        }
        catch (FileNotFoundException e){
                System.out.println("File not Found ");
            }
            catch (IOException e) {
                e.printStackTrace();
            }

    }

    public void write_to_file(){


        try{
            File file;
            FileWriter fr;
            Writer output;
            for(int i=1; i<=10; i++){
                file = new File("C:/Final/word_directory/10Doc/file"+i+".txt");
                fr = new FileWriter(file);
                output =new BufferedWriter(fr);

                int a =(int) Math.floor(Math.random() * (2000 - 500) + 500);
                int b = a - 50;
                for(int j =b; j<=a; j++){

                    output.write(BigList.get(j).toString()+" ");
                    String str = (String) BigList.get(j);

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
            System.out.println("has been inputted in the 10 documents ");
        }catch (Exception e){
            System.out.println("problem in write to file");
        }
    }

}
