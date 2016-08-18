function [b,error]=find_translation(frame1,frame2,border,...
                                    b_initial,...
                                    options)

theta_initial=b_initial;
theta= ...
  fminsearch( ...
    @(theta)(translation_error(theta,frame1,frame2,border)), ...
    theta_initial, ...
    options); 
%fprintf(1,'\n');
b=theta;
error=registration_error(frame1,frame2,border,eye(2),b);