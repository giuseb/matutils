function rv = getfieldi(S,field)
   % GETFIELDI get the content of a structure field disregarding
   % capitalization. Returns empty if the field does not exist.
   names   = fieldnames(S);
   isField = strcmpi(field,names);
   if any(isField)
      rv = S.(names{isField});
   else
      rv = [];
   end
end
