class UnexpectedValueError<F> extends Error {
  final F valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return '''
 -------  ERROR:  ---------------------------------------------------------------------------------------------
     $explanation | $valueFailure
 --------------------------------------------------------------------------------------------------------------
    ''';
  }
}
