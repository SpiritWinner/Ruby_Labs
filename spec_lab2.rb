require 'rspec'
require './main_lab2.rb'

RSpec.describe "Main" do
  it "#revers_or_pow_first_solution" do
    expect(revers_or_pow("dferCs")).to eq(64)
  end

  it "#revers_or_pow_second_solution" do
    expect(revers_or_pow("dfErds")).to eq("sdrEfd")
  end

  it "#hash_pokemon" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(2, "ftyu", "eee", "Alan", "blue")
    expect(hash_pokemon).to eq([{"ftyu" => "eee"}, {"Alan" => "blue"}])
  end
end
