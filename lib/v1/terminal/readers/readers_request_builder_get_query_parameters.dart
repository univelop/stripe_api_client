// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_device_type_query_parameter_type.dart';
import './get_status_query_parameter_type.dart';

/// auto generated
/// <p>Returns a list of <code>Reader</code> objects.</p>
class ReadersRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Filters readers by device type
  /// @QueryParameter('device_type')
  GetDeviceTypeQueryParameterType? deviceType;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  A location ID to filter the response list to only readers at the specific location
  String? location;

  ///  Filters readers by serial number
  /// @QueryParameter('serial_number')
  String? serialNumber;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  A status filter to filter readers to only offline or online readers
  GetStatusQueryParameterType? status;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'device_type': deviceType,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'location': location,
      'serial_number': serialNumber,
      'starting_after': startingAfter,
      'status': status,
    };
  }
}
