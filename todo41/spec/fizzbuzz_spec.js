describe("fizzbuzz", function(){
  it("prints fizzbuzz for multiples of 15", function(){
    expect(45).toBe("Fizzbuzz");
  });
  it("prints fizz for multiples of 3", function(){
    expect(33).toBe("Fizz");
  });
  it("prints buzz for mulitples of 5", function(){
    expect(65).toBe("Buzz");
  });
  it("prints the number for numbers that are not multiples of 3 or 5", function(){
    expect(77).toBe(77);
  });
});