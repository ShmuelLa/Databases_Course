import java.util.stream.*;

public class jstream {
    public static void main(String[] args) {
        String text = "Moriya Shmuel trala this is an example for a text that will be tested in the jstream";
        Stream.of(text.split(" "))
                .map(a->a.length())
                .forEach(System.out::println);
    }
}