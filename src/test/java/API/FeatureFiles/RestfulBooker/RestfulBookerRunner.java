package API.FeatureFiles.RestfulBooker;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static Utils.Utils.generateReport;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class RestfulBookerRunner {
    @Test
    void testParallel() {
        Results results = Runner.path("classpath:API/FeatureFiles/RestfulBooker")
                .outputCucumberJson(true)
                .parallel(1);
        generateReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
    /*public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "APIAutomation");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }*/
}
