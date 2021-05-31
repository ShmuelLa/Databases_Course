import java.util.stream.Collectors;
import java.util.stream.Stream;
import static java.util.stream.Collectors.summingInt;

public class jstream2 {
    public static void main(String[] args) {
        String text = " a b ab ac abc adb abcde abcdr abcde abclde albcde abllcde allbcde alllbcde abcmmmmde abcdmmmme 1234567891";
        Stream.of(text.split(" "))
                .map(s -> s.length())
                .filter(x -> (x>=5 && (Integer) x <=9))
                .collect(Collectors.groupingBy(x->String.valueOf(x)+"_letters", summingInt(e -> 1)))
                .entrySet();
        System.out.println(Stream.of(text.split(" "))
                .map(s -> s.length())
                .filter(x -> (x>=5 && (Integer) x <=9))
                .collect(Collectors.groupingBy(x->String.valueOf(x)+"_letters", summingInt(e -> 1)))
                .entrySet());
    }
}