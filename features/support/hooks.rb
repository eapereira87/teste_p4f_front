require "report_builder"
at_exit do
  ReportBuilder.configure do |config|
    config.input_path = "log/reports.json"
    config.report_path = "log/Report-#{Time.new.strftime("%Y%m%d_%H%M%S")}"
    config.report_types = [:html]
    config.report_tabs = %w[Overview Features Scenarios Errors]
    config.report_title = "Resultado Automação P4F"
    config.compress_images = false
    # config.additional_info = { "API" => "Portadores" }
  end
  ReportBuilder.build_report
end
