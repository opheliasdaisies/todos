describe("fizzbuzz", function(){
  it("prints fizzbuzz for multiples of 15", function(){
    expect(fizzbuzz(45)).toBe("Fizzbuzz");
  });
  it("prints fizz for multiples of 3", function(){
    expect(fizzbuzz(33)).toBe("Fizz");
  });
  it("prints buzz for mulitples of 5", function(){
    expect(fizzbuzz(65)).toBe("Buzz");
  });
  it("prints the number for numbers that are not multiples of 3 or 5", function(){
    expect(fizzbuzz(77)).toBe(77);
  });
});