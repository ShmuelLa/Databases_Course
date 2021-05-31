import java.util.stream.*;

public class jstream2 {
    public static void main(String[] args) {
        String text = " a b ab ac abc adb abcde abcdr abcde abclde albcde abllcde allbcde alllbcde abcmmmmde abcdmmmme 1234567891";
        System.out.println(Stream.of(text.split(" "))
                .map(s -> s.length())
                .filter(x -> (x>=5 && x <=9))
                .collect(Collectors.groupingBy(x->String.valueOf(x)+"_letters", Collectors.summingInt(e -> 1))));
    }
}