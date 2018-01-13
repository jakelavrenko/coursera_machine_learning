## Copyright (C) 2018 Jake Lavrenko
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} labels_recode (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Jake Lavrenko <Jake@jake144.local>
## Created: 2018-01-12

% The function recodes the labels vector into a matrice of vectors containing only values 0 or 1

% y - vector containing labels for the training set
% K - number of labels
% y1 - resulting matrice 

function [y1] = labels_recode (y, K)

m = (size (y));

y1 = zeros (m, K);

for i=1:m
for k=1:K

if (y(i) == k)

y1 (i,k) = 1;

endif


endfor
endfor

%y2 = zeros (K, m);

%y2 = y1';


endfunction
