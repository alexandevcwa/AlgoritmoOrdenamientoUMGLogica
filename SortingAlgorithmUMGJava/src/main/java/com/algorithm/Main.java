package com.algorithm;

import java.util.*;

public class Main {
    private static int option;
    private static String stringWords;
    private static String[] stringsArray;


    public static void main(String[] args) {
        System.out.println("[INFO] ALGORITMO DE ORDENAMIENTO");
        System.out.println("[INFO] INGRESA UNA CADENA CON NUMEROS Y PALABRAS");

        Scanner scanner = new Scanner(System.in);
        stringWords = scanner.nextLine();
        if (stringWords.length() > 0) {
            stringsArray = stringWords.split(" ");

            SortArray();

            for (String item : stringsArray) {
                System.out.print(item + " ");
            }
        }
    }

    private static void SortArray() {
        int minor_value;

        for (int i = 0; i < stringsArray.length - 1; i++) {
            minor_value = i;
            for (int j = i + 1; j < stringsArray.length; j++) {
                if (stringsArray[j].toCharArray()[0] < stringsArray[i].toCharArray()[0]) {
                    minor_value = j;
                    MoveArrayItem(i,j,minor_value);
                }
                else if (stringsArray[j].toCharArray()[0] == stringsArray[i].toCharArray()[0]) {
                    minor_value = j;
                    i += 1;
                    MoveArrayItem(i,j,minor_value);
                }
            }
        }
    }

    private static void MoveArrayItem (int i, int j, int minor_value){
        String aux = stringsArray[i];
        stringsArray[i] = stringsArray[minor_value];
        stringsArray[minor_value] = aux;
    }
}