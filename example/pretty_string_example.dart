// ignore_for_file: avoid_print

import 'package:pretty_string/pretty_string.dart';

import 'models/device.dart';
import 'models/very_complicated_model.dart';

void main() {
  const instance = VeryComplicatedModel(
    id: 1,
    name: 'Bob',
    imageUrl:
        'https://google.com/ASDFIAJIOWEJFOIAWJFIOSDFOJASFGUOOWUGHAOUWRGHOAWRUGAOWRUGAWORGHOUAWRHGOUAWHOUGaposdkfpoasFAWEOFKP#@(234jiofjas98dfj89@###',
    address:
        'Avenue 100 STREET DUMMY DUMMY DUMMY DUMMY DUMMY DUMMY DUMMY DUMMY ',
    laptopCount: 10,
    age: 53,
    parentImageUrl:
        'https://google.com/ASDFIAJIOWEJFOIAWJFIOSDFOJASFGUOOWUGHAOUWRGHOAWRUGAOWRUGAWORGHOUAWRHGOUAWHOUGaposdkfpoasFAWEOFKP#@(234jiofjas98dfj89@###',
    wayToGoHome:
        'This way Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy',
    hasChildren: true,
    hasCamera: true,
    hasOwnWebsite: false,
    characteristics: {
      'eyes': 'big',
    },
    refrigeratorBrand: 'Samsung',
    carBrand: 'Benz',
    status: 'Very tired',
    hasGlasses: false,
    devices: [
      Device(
        id: 'APOSIFK-fAWFKO123-aSDF',
        platform: 'Android',
        version: '32',
        isRooted: true,
      ),
      Device(
        id: 'APOSIFK-aASODPFKA123!@ODFKAPSOD2@@-@ASDFS',
        platform: 'IOS',
        version: '15.1',
        isRooted: false,
      ),
      Device(
        id: 'aASODPFKA123!@ODFKAPSOD2@@-@ASDFS',
        platform: 'IOS',
        version: '16.1',
        isRooted: false,
      ),
    ],
    friend: null,
  );

  print(instance);
  /** Very hard to read */
  /// VeryComplicatedModel(id: 1, name: Bob, imageUrl: https://google.com/ASDFIAJIOWEJFOIAWJFIOSDFOJASFGUOOWUGHAOUWRGHOAWRUGAOWRUGAWORGHOUAWRHGOUAWHOUGaposdkfpoasFAWEOFKP#@(234jiofjas98dfj89@###, address: Avenue 100 STREET DUMMY DUMMY DUMMY DUMMY DUMMY DUMMY DUMMY DUMMY , laptopCount: 10, age: 53, parentImageUrl: https://google.com/ASDFIAJIOWEJFOIAWJFIOSDFOJASFGUOOWUGHAOUWRGHOAWRUGAOWRUGAWORGHOUAWRHGOUAWHOUGaposdkfpoasFAWEOFKP#@(234jiofjas98dfj89@###, wayToGoHome: This way Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy, hasChildren: true, hasCamera: true, hasOwnWebsite: false, characteristics: {eyes: big}, refrigeratorBrand: Samsung, carBrand: Benz, status: Very tired, hasGlasses: false, devices: [Device(id: APOSIFK-fAWFKO123-aSDF, platform: Android, version: 32, isRooted: true), Device(id: APOSIFK-aASODPFKA123!@ODFKAPSOD2@@-@ASDFS, platform: IOS, version: 15.1, isRooted: false), Device(id: aASODPFKA123!@ODFKAPSOD2@@-@ASDFS, platform: IOS, version: 16.1, isRooted: false)], friend: null)

  print(instance.toPrettier());
  /** Saves my life! */
  /// VeryComplicatedModel(
  /// id: 1,
  /// name: Bob,
  /// imageUrl: https:///google.com/ASDFIAJIOWEJFOIAWJFIOSDFOJASFGUOOWUGHAOUWRGHOAWRUGAOWRUGAWORGHOUAWRHGOUAWHOUGaposdkfpoasFAWEOFKP#@(
  ///   234jiofjas98dfj89@###,
  ///   address: Avenue 100 STREET DUMMY DUMMY DUMMY DUMMY DUMMY DUMMY DUMMY DUMMY ,
  ///   laptopCount: 10,
  ///   age: 53,
  ///   parentImageUrl: https:///google.com/ASDFIAJIOWEJFOIAWJFIOSDFOJASFGUOOWUGHAOUWRGHOAWRUGAOWRUGAWORGHOUAWRHGOUAWHOUGaposdkfpoasFAWEOFKP#@(
  ///     234jiofjas98dfj89@###,
  ///     wayToGoHome: This way Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy,
  ///     hasChildren: true,
  ///     hasCamera: true,
  ///     hasOwnWebsite: false,
  ///     characteristics: {
  ///       eyes: big
  ///     },
  ///     refrigeratorBrand: Samsung,
  ///     carBrand: Benz,
  ///     status: Very tired,
  ///     hasGlasses: false,
  ///     devices: [
  ///       Device(
  ///         id: APOSIFK-fAWFKO123-aSDF,
  ///         platform: Android,
  ///         version: 32,
  ///         isRooted: true
  ///       ),
  ///       Device(
  ///         id: APOSIFK-aASODPFKA123!@ODFKAPSOD2@@-@ASDFS,
  ///         platform: IOS,
  ///         version: 15.1,
  ///         isRooted: false
  ///       ),
  ///       Device(
  ///         id: aASODPFKA123!@ODFKAPSOD2@@-@ASDFS,
  ///         platform: IOS,
  ///         version: 16.1,
  ///         isRooted: false
  ///       )
  ///     ],
  ///     friend: null
  ///   )
}
