function [active_map] = active_p(inputdata,typestring)
% active_p.m is trying to draw p value active map the p value get from wiki
% table
%    qual, alpha=0.05, dual tail test, p=1.96;
%    great, alpha=0.05, single tail test, p=1.645;
%    less, alpha=0.05, single tail test, p=-1.645;

   n=length(inputdata);
   tmp=inputdata;
   switch typestring
       case 'equal'
           for i=1:n
               if abs(tmp(i))<1.96
                   tmp(i)=0;
               end
           end
       case 'great'
           for i=1:n
               if tmp(i)<1.645
                   tmp(i)=0;
               end
           end
       case 'less'
           for i=1:n
               if tmp(i)>-1.645
                   tmp(i)=0;
               end
           end      
       otherwise
           fprintf('the second parameter is equal, great or less');
   end
   active_map=tmp;
end

