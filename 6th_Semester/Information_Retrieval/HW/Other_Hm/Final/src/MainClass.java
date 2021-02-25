public class MainClass {

    public static void main(String[] args) {
        ReadBig bc = new ReadBig();
        bc.BigFile();
        bc.write_to_file();

        WriteSolution ms =new WriteSolution();
        ms.Files_10();
        ms.Final_Solution();

    }
}