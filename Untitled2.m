a = A1';
b = B1(:,1:3)';
c = B1(:,4:6)';
d = a-c;
e = b-c;
f = cross(d,e)';
g = sqrt(f(:,1).^2+f(:,2).^2+f(:,3).^2);
plot(g)