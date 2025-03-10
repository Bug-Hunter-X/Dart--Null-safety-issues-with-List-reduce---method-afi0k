```dart
List<int> numbers = [1, 2, 3, 4, 5];
int sum = numbers.reduce((a, b) => a + b);
print(sum);

//This will work fine

List<int?> nullableNumbers = [1, 2, null, 4, 5];
int? sum2 = nullableNumbers.reduce((a, b) => a! + b!); //This will throw an error if any element is null
print(sum2);

//Correct way
int? sum3 = nullableNumbers.fold<int?>(0,(a,b)=>a! + b ?? 0);
print(sum3);
```