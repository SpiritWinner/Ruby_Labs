require 'rspec'
require './main.rb'

RSpec.describe "Main" do
  it "#greeting_first_solution" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('John', 'Snow', 5)

    expect(greeting).to eq("Hello, John Snow. You're under 18")
  end

  it "#greeting_first_solution" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Andrey', 'Winter', 22)

    expect(greeting).to eq("Hello, Andrey Winter. Time to work")
  end

  it "#foobar_first_solution" do
    expect(foobar(20,1)).to eq(1)
  end

  it "#foobar_second_solution" do
    expect(foobar(7,15)).to eq(22)
  end
end
