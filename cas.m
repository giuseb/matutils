function rv = cas(cond, ift, iff)
   % CAS conditional assignment
   % syntactic sugar to mimick a ternary operator, sort of.
   if cond
      rv = ift;
   else
      rv = iff;
   end
end