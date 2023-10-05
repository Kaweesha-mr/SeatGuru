package com.example.seat_guru_oop;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class passwordHash {

    public static String doHashing(String Password){
        try{
            MessageDigest messageDigest = MessageDigest.getInstance("SHA");
            messageDigest.update(Password.getBytes());
            byte[] resultByteArray = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : resultByteArray) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();

        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
