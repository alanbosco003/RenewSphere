abstract class IValueObject<T> {
  T value;

  T? validate(T? value);

  IValueObject(this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IValueObject<T> &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return '$runtimeType($value)';
  }
}
