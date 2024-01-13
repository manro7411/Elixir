defmodule Tutorials.Recursion.PrintDigits do
  #base case
  def upto(0) do
    #return
    :ok
  end

  #
  def upto(nums) do
     #3,2,1,0
    upto(nums-1)
    IO.puts(nums)

  end
end
    #num3 -> 0,1,2,3
  #for i =0 ;i<n;i++
