require 'rspec'
require './main_lab2.rb'

RSpec.describe "Main_2" do
  it "#revers_or_pow_first_solution" do
    expect(revers_or_pow("dferCs")).to eq(64)
  end
end
