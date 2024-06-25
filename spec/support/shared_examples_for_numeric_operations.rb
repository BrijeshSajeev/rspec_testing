RSpec.shared_examples "a numeric operation function" do

  it "raises TypeError when first argument is not a number" do
    expect { subject.call("a", 3) }.to raise_error(TypeError, "Please enter a number")
  end

  it "raises TypeError when second argument is not a number" do
    expect { subject.call(2, "b") }.to raise_error(TypeError, "Please enter a number")
  end
end
