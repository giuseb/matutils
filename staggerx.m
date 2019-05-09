function x = staggerx(basex, nseries, delta)
   % STAGGERX   stagger X coordinates to plot non overlapping error bars
   %
   % Line charts with multiple series can be hard to read when error bars
   % overlap; use STAGGERX to produce X coordinates horizontally shifted by
   % a given amount.
   %
   % X = STAGGERX(basex, nseries, delta)   takes a vector of X coordinates
   % (basex), the number of data series to be plotted (nseries), and the
   % amount of shift to apply; returns a matrix of staggered X coordinates,
   % to be used with errorbar, plot, etc.
   %
   % Last modified: 21 Oct 2017
   left = (nseries-1) * delta / 2;
   off = (0:delta:delta*(nseries-1)) - left;   
   x = repmat(basex(:), 1, nseries) + repmat(off, length(basex), 1);      
end