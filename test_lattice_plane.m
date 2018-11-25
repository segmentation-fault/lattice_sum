clc
clear
close all
reset(symengine)

tic

%Tests the lattice plane function

%Graphical test with a 3D plane s.t. x_1 + x_2 + x_3 = 10
r = 10;
figure
hold on
X = [];
Y = [];
Z = [];
parfor i=0:r
    for j=0:r-i
        X = [X i];
        Y = [Y j];
        Z = [Z r-i-j];
    end
end
scatter3(X,Y,Z,'rx');
view([59,25]);

n = 3;
I = find_lattice_plane(n,r);
X1 = zeros(1,numel(I));
Y1 = zeros(1,numel(I));
Z1 = zeros(1,numel(I));
parfor i=1:numel(I)
    v = I{i};
    X1(i) = v(1);
    Y1(i) = v(2);
    Z1(i) = v(3);
end
scatter3(X1,Y1,Z1,'b+');
legend({'manual','recursive'});
xlabel('x_1')
ylabel('x_2')
zlabel('x_3')
grid on
hold off

%Test with a multidimensional hyperplane
r = 10;
n = 5;
I = find_lattice_plane(n,r);
parfor i=1:numel(I)
    v = I{i};
    assert(sum(v)==r);
end

elapsedTime = toc;
s = seconds(elapsedTime);
s.Format = 'hh:mm:ss.SSS';
disp('Elapsed time (hms): ');
disp(s);