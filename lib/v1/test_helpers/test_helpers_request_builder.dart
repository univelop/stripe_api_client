// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens/confirmation_tokens_request_builder.dart';
import './customers/customers_request_builder.dart';
import './issuing/issuing_request_builder.dart';
import './refunds/refunds_request_builder.dart';
import './terminal/terminal_request_builder.dart';
import './test_clocks/test_clocks_request_builder.dart';
import './treasury/treasury_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers
class TestHelpersRequestBuilder
    extends BaseRequestBuilder<TestHelpersRequestBuilder> {
  ///  The confirmation_tokens property
  ConfirmationTokensRequestBuilder get confirmationTokens {
    return ConfirmationTokensRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The customers property
  CustomersRequestBuilder get customers {
    return CustomersRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The issuing property
  IssuingRequestBuilder get issuing {
    return IssuingRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The refunds property
  RefundsRequestBuilder get refunds {
    return RefundsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The terminal property
  TerminalRequestBuilder get terminal {
    return TerminalRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The test_clocks property
  TestClocksRequestBuilder get testClocks {
    return TestClocksRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The treasury property
  TreasuryRequestBuilder get treasury {
    return TreasuryRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  TestHelpersRequestBuilder clone() {
    return TestHelpersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TestHelpersRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TestHelpersRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers", pathParameters);

  /// Instantiates a new [TestHelpersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TestHelpersRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers",
            {RequestInformation.rawUrlKey: rawUrl});
}
