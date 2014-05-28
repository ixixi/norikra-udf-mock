package in.ixixi.norikra.udf;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;

public final class MyUDF {

  public static String raw(final String source) {

    writeSourceToFile(source,"/tmp/norikra-udf-raw.log");

    return source;
  }

  public static String convertLatin1ToUTF8(final String source) {

    String utf8Str = new String(source.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    writeSourceToFile(utf8Str,"/tmp/norikra-udf-convertLatin1ToUTF8.log");

    return utf8Str;
  }

  private static void writeSourceToFile(final String line, String dstPath){

    Path dst = Paths.get(dstPath);

    try (BufferedWriter bw = Files.newBufferedWriter(dst,StandardCharsets.UTF_8, StandardOpenOption.CREATE)) {
      bw.write(line);

    } catch (IOException e) {
      e.printStackTrace();
    }
  }
}
