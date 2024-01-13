defmodule Tutorials.Recursion.PrintDigits do
  def upto(0) do
    0
  end
  def upto(nums) do
    IO.puts(nums) #3,2,1,0
    upto(nums-1)

  end
end
    #num3 -> 0,1,2,3
  #for i =0 ;i<n;i++
