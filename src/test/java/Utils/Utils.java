package Utils;

import java.util.Base64;
import java.util.Random;

public class Utils {
    public static String decode64(String encodedStr){
        Base64.Decoder decoder = Base64.getDecoder();
        return new String(decoder.decode(encodedStr.getBytes()));
    }

    public static String generateRandomString(int length){
        String seedChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        StringBuilder sb = new StringBuilder();
        int i = 0;
        Random random = new Random();
        while(i < length){
            sb.append(seedChars.charAt(random.nextInt(seedChars.length())));
            i++;
        }
        return sb.toString();
    }

    public static int generateRandomNum(){
        Random rand = new Random();
        int min = 29991;
        int max = 58881;
        return rand.nextInt((max - min) + 1) + min;
    }

}
