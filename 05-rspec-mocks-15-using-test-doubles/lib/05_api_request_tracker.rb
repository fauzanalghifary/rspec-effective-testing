require_relative '05_endpoint'
require_relative '05_metrics_reporter'

class APIRequestTracker
  attr_writer :reporter
  def reporter
    @reporter ||= MetricsReporter.new
  end

  def process(request)
    endpoint_description = Endpoint.description_of(request)
    reporter.increment("api.requests.#{endpoint_description}")
  end
end
