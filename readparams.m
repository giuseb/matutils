function rv = readparams(fname, section)
   % READPARAMS(FILENAME, SECTION)
   % Read and parse a YAML file, returns a structure
   rv = YAML.read(fname);
   if nargin>1
      if ~isfield(rv, section)
         error(['No section “' section '” in params file'])
      end
      rv = rv.(section);
   end
end