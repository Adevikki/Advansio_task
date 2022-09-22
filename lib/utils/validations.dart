

import 'package:advansio_test/utils/utils.dart';

class Validations {
  // the regex only allows letters
  RegExp expressionForOnlyLetter =
      new RegExp(r"[^a-z\s]", caseSensitive: false);

  // the regex only allows letters and numbers
  RegExp expressionForOnlyLetterAndNumbers = new RegExp(r'^[a-zA-Z0-9\s]+$');
  RegExp expressionForOnlySpaceBetweenWords = new RegExp(r'^\w+\s+\w+');

  // the regex only allows numbers
  RegExp expressionForOnlyNumbers = new RegExp(r'^[0-9.]+$');

  // the regex only allows numbers and decimals
  RegExp expressionForOnlyNumbersAndDecimals =
      new RegExp(r'^(?=\D*(?:\d\D*){1,12}$)\d+(?:\.\d{1,4})?$');

  // email validation
  static String? email(email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern as String);

    if (email.isEmpty || email.trim().isEmpty) {
      return "Email is required";
    }
    if (email.toString().endsWith(".con")) {
      return "Please enter a valid email address";
    }
    if (!regex.hasMatch(email)) {
      return "Please enter a valid email address";
    }
    return null;
  }

  // first name
  static String? firstName(String? value) {
    if (value == null || value == '') {
      return 'First name is required';
    } else if (value.trim() == '') {
      return 'First name is required';
    }
    // check if the name only contain letters
    else if (Validations().expressionForOnlyLetter.allMatches(value).length >
        0) {
      return 'Only letters are allowed';
    } else if (value.length < 3) {
      return 'Must be 3 or more characters';
    }

    return null;
  }

  // last name
  static String? lastName(String? value) {
    if (value == null || value == '') {
      return 'Last name is required';
    } else if (value.trim() == '') {
      return 'Last name is required';
    }
    // check if the name only contain letters
    else if (Validations().expressionForOnlyLetter.allMatches(value).length >
        0) {
      return 'Only letters are allowed';
    } else if (value.length < 3) {
      return 'Must be 3 or more characters';
    }

    return null;
  }

  // phone number
  static String? phoneNumber(String? value, String? zipCode) {
    if (value == null || value == '') {
      return 'Phone number is required';
    } else if (value.trim() == '') {
      return 'Phone number is required';
    } else if (value.length < 7) {
      return 'Must be 7 or more digits';
    } else if (value.startsWith(zipCode!.substring(0))) {
      return 'Phone number cannot start with ${zipCode.substring(0)}';
    }

    return null;
  }

  // password
  static String? password(String? value) {
    if (value == '') {
      return 'Password is required';
    } else if (value?.trim() == '') {
      return 'Password is required';
    } else if (!passwordCharacterLength(value!)) {
      return 'Password must be minimum of 8 characters';
    } else if (!stringContainsUpperCase(value)) {
      return 'Password must contain at least one UPPERCASE character';
    } else if (!stringContainsNumber(value)) {
      return 'Password must contain at least one number';
    }

    return null;
  }

  // confirm password
  static String? confirmPassword(String? value) {
    if (value != null && value.isEmpty) {
      return 'Confirm password is required please enter';
    }
    if (value != value) {
      return 'Confirm password not matching';
    }
    return null;
  }

  // login password
  static String? loginPassword(String? value) {
    if (value == null || value == '') {
      return 'Password is required';
    } else if (value.trim() == '') {
      return 'Password is required';
    }

    return null;
  }

  // transfer remarks
  static String? remarks(String? value) {
    if (value == '') {
      return 'Remark is required';
    } else if (value?.trim() == '') {
      return 'Remark is required';
    }

    return null;
  }

  // Username
  static String? username(String? value) {
    if (value == '') {
      return 'Username is required';
    } else if (value!.length < 4 || value.length > 30) {
      return 'Username must be a minimum of 4 and a maximum of 30 characters long';
    } else if (Validations()
            .expressionForOnlyLetterAndNumbers
            .hasMatch(value) ==
        false) {
      return 'Only letters and numbers are allowed';
    } else if (Validations()
            .expressionForOnlySpaceBetweenWords
            .hasMatch(value) ==
        true) {
      return 'Username cannot be separated';
    } else if (int.tryParse(value.substring(0, 1)).runtimeType == int) {
      return 'Username cannot start with a number';
    }

    return null;
  }

  // address field
  static String? address(String? value) {
    if (value == '') {
      return 'Street address is required';
    } else if (value?.trim() == '') {
      return 'Street address is required';
    }

    return null;
  }

  // address field
  static String? city(String? value) {
    if (value == '') {
      return 'City is required';
    } else if (value?.trim() == '') {
      return 'City is required';
    }

    // check if the city only contain letters
    else if (Validations().expressionForOnlyLetter.allMatches(value!).length >
        0) {
      return 'Only letters are allowed';
    } else if (value.length < 2) {
      return 'Must be 2 or more characters';
    }
    return null;
  }

  // postal code
  static String? postalCode(String? value) {
    if (value == '') {
      return 'Postal code is required';
    } else if (value?.trim() == '') {
      return 'Postal code is required';
    } /* else if (value!.length != 5) {
      return 'Must be 5 digits';
    }*/ // check if the city only contain letters
    else if (!Validations().expressionForOnlyNumbers.hasMatch(value!)) {
      return 'Only numbers are allowed';
    }

    return null;
  }

  static String? cvv(String? value) {
    if (value == '') {
      return 'CVV is required';
    } else if (value?.trim() == '') {
      return 'CVV is required';
    } else if (value!.length != 3) {
      return 'Invalid CVV';
    } // check if the city only contain letters

    return null;
  }

  static String? ssnValidation(String? value) {
    if (value == null || value == '') {
      return 'SSN/ITIN/EIN is required';
    }

    //   if (!RegexToolkit.ssn.hasMatch(value)) {
    //     return 'SSN/ITIN/EIN is not valid';
    //   }
    //   return null;
  }

  static String? website(website) {
    String pattern =
        r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)';
    RegExp regExp = RegExp(pattern);
    if (website!.isEmpty) {
      return "Please enter your LinkdIn profile Url.";
    } else if (!(regExp.hasMatch(website))) {
      return "Please enter your full LinkdIn profile Url correctly.";
    } else {
      return null;
    }
  }
}
