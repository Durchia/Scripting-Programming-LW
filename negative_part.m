function negative_part


global x y

for k = 1:length(x)             
    if x(k) < 0                
        y(k) = -sin(x(k));      
    end
end
end

%[appendix]{"version":"1.0"}
%---
