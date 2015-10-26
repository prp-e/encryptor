require 'digest'

#############################
# What does this program do?#
# It'll encrypt everything  #
# How many times you want!  #
# Idea of this program is   #
# formed in my mind in the  #
# machine language class    #
# in the university!        #
# I know this code may be   #
# useless, but I enjoy      #
# coding in ruby!           #
# This code is hackable!    #
# Read the comments in      #
# the code, to get ideas    #
# for hacking this code.    #
#############################
def encrypt(string, times = 65536)
  # You can change times to how much you like. but pay attention please!
  # Larger numbers will take more time to encrypt.
  # For example, if you use a large number such as 2^32, it'll be about
  # 5 billion times! It will take a very long time (maybe hours and days)
  # and damage your CPU.
  n = 0
  code = string
  while n < times
    code = Digest::SHA2.hexdigest(code)
    # You also can use MD5 or SHA1 algorithms. for more information,
    # check my project https://github.com/prp-e/rsha256 .
    n += 1
  end
  return code
  # Here, you can reverse the coded string, to make it more 'coded', or
  # You can code it in a different algorithm, too.
end

#You can ignore this part, and use the above function in your code!
print 'String to be coded: '
str = gets.chomp()
print 'How many times you want it to be encrypted? (default = 65536) '
times = gets.chomp

#You also can remove this part, and only use encrypt(str) form, because
#It'll encrypt the code for you 2^16 time, or 65536 times.

if times == ''
 puts encrypt(str)
 else
   puts encrypt(str, times.to_i)
   puts "The string #{str} has been encrypted #{times} times."
 end

 # And the final part! I just wrote the final part to show you how the result
 # will be. But, you can remove/replace it. You can write all of encrypted
 # entries in a database, using MySQL, PostgresSQL or MongoDB (For example,
 # passwords of a social network, etc.) or in a file. Also like my other project,
 # 'rsha256', you can use this code as a backend for an encryption website or
 # Something similar!
