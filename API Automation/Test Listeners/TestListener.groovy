import app.mile.Steps
import com.kms.katalon.core.annotation.BeforeTestSuite
import com.kms.katalon.core.context.TestSuiteContext

class TestListener {
	/**
	 * Executes before every test suite starts.
	 * @param testSuiteContext: related information of the executed test suite.
	 */
	@BeforeTestSuite
	def sampleBeforeTestSuite(TestSuiteContext testSuiteContext) {
		Steps.updateInfo()
	}
}