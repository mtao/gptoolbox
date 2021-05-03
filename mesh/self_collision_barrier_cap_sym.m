function [sf,out2,out3] = self_collision_barrier_cap_sym(in1,tol1)
%SELF_COLLISION_BARRIER_CAP_SYM
%    [SF,OUT2,OUT3] = SELF_COLLISION_BARRIER_CAP_SYM(IN1,TOL1)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    20-Apr-2021 19:13:58

X1 = in1(:,1);
X2 = in1(:,2);
X3 = in1(:,3);
X4 = in1(:,4);
t2 = X1.*2.0;
t3 = X2.*2.0;
t4 = X3.*2.0;
t5 = X4.*2.0;
t6 = -X2;
t8 = -X4;
t10 = 1.0./tol1;
t7 = -t3;
t9 = -t5;
t11 = X1+t6;
t12 = X3+t8;
t13 = t2+t7;
t14 = t4+t9;
t15 = t11.^2;
t16 = t12.^2;
t17 = t13.^2;
t18 = t14.^2;
t19 = t15+t16;
t20 = 1.0./t19;
t22 = sqrt(t19);
t21 = t20.^2;
t23 = 1.0./t22;
t25 = -t22;
t27 = t10.*t22;
t29 = (t22-tol1).^2;
t24 = t23.^3;
t26 = t25+tol1;
t28 = log(t27);
sf = -t28.*t29;
if nargout > 1
    t30 = t20.*t29;
    t40 = (t17.*t21.*t29)./2.0;
    t41 = (t18.*t21.*t29)./2.0;
    t49 = (t13.*t14.*t21.*t29)./2.0;
    t31 = -t30;
    t32 = -t17.*t24.*(t22-tol1);
    t33 = -t18.*t24.*(t22-tol1);
    t34 = (t13.*t30)./2.0;
    t35 = (t14.*t30)./2.0;
    t36 = t17.*t24.*(t22-tol1);
    t37 = t18.*t24.*(t22-tol1);
    t38 = (t17.*t20.*t28)./2.0;
    t39 = (t18.*t20.*t28)./2.0;
    t44 = -t40;
    t45 = -t41;
    t46 = -t13.*t14.*t24.*(t22-tol1);
    t47 = (t13.*t14.*t20.*t28)./2.0;
    t48 = t13.*t14.*t24.*(t22-tol1);
    t51 = -t49;
    t52 = t23.*t28.*(t22-tol1).*-2.0;
    t53 = t23.*t28.*(t22-tol1).*2.0;
    t54 = -t13.*t23.*t28.*(t22-tol1);
    t55 = -t14.*t23.*t28.*(t22-tol1);
    out2 = [-t34+t54;t34+t13.*t23.*t28.*(t22-tol1);-t35+t55;t35+t14.*t23.*t28.*(t22-tol1)];
end
if nargout > 2
    t42 = -t38;
    t43 = -t39;
    t50 = -t47;
    t56 = t28.*t36.*(-1.0./2.0);
    t57 = t28.*t37.*(-1.0./2.0);
    t58 = (t28.*t36)./2.0;
    t59 = (t28.*t37)./2.0;
    t60 = t28.*t48.*(-1.0./2.0);
    t61 = (t28.*t48)./2.0;
    t62 = t46+t49+t50+t61;
    t63 = t47+t48+t51+t60;
    t64 = t30+t36+t38+t44+t53+t56;
    t65 = t31+t32+t40+t42+t52+t58;
    t66 = t30+t37+t39+t45+t53+t57;
    t67 = t31+t33+t41+t43+t52+t59;
    out3 = [t65;t64;t62;t63;t64;t65;t63;t62;t62;t63;t67;t66;t63;t62;t66;t67];
end