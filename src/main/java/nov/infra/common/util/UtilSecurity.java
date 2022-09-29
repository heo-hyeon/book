package nov.infra.common.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class UtilSecurity {

  public static String encryptSha256(String text) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        System.out.println("md : " + md);
        md.update(text.getBytes());
        System.out.println("text : " + text);

        return bytesToHex(md.digest());
  }

  private static  String bytesToHex(byte[] bytes) {
    StringBuilder builder = new StringBuilder();
    for (byte b : bytes) {
    builder.append(String.format("%02x", b));
    }
    
    return builder.toString();
}

}
