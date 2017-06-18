/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package encode;

/**
 *
 * @author Administrator
 */
public class NewClass {

    public static void main(String[] args) {
        MD5 md5 = new MD5();
        String a = md5.getMD5ofStr("654321");
        System.out.println(a);
    }

}
