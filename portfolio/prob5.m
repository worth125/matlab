clc, clear all, close all;

diary pw.txt

%ask for user name
name = input('What is your username?','s');

%ask what they want to do
CHOICE = menu('What would you like to do?','Verify pw','Add new user');

if CHOICE == 1
    fid = fopen('pw.txt','r');
    nextname = fgetl(fid);
    while ~strcmpi(nextname, name)& nextname ~= -1
        [~] = fgetl(fid);
        nextname = fgetl(fid);
    end
    if nextname == -1
        disp('Sorry, there is no record of this user name');
    else
        truepw = fgetl(fid);
        pw = input('What is your password?','s');
        if strcmp(pw, truepw)
            disp('You''re in!');
        else
            disp('Access denied');
        end
    end
    fclose(fid);
elseif CHOICE == 2
    fid = fopen('pw.txt','a');
    pw = input('Choose a password','s');
    fprintf(fid, '%s\n',name, pw);
    fclose(fid);
end

diary