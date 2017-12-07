% Tutorial Minggu ke-5
% MENCARI APROKSIMASI TURUNAN 
% 
% File ini akan memanggil beberapa kode dan anda harus melengkapi kode tersebut
% untuk mencari hampiran turunan beberapa fungsi
% 
% File latihan :    
%     1. myfun.m
%     2. bedaTengah.m
%     3. diffTabel.m
%     
% Pada latihan ini, anda tidak perlu mengotak-atik code pada file ini 
% anda cukup membuat kode program pada file-file diatas.
% 
% 
%==========================================================================
% PART 1: MENDEFINISIKAN FUNGSI YANG AKAN DICARI TURUNANNYA
% Buatlah sebuah fungsi yang diberi nama myfun.m yang isinya adalah fungsi
% yang akan dicari turunannya.
% Bualah kode yang merepresentasikan fungsi f(x) = cos(x^2-2x+1)

clc;
clear;
close all;
x = [1; 1.5; 1.75; 1.9; 2]; 
fprintf('Part 1 : Mendefinisikan fungsi yang akan dicari turunannya \n');
y = myfun(x)
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah  \n');
fprintf('y = 1.00000 0.96891 0.84592 0.68950 0.54030 \n');
fprintf('Tekan tombol apapun untuk lanjut \n\n');
pause;

%==========================================================================
% PART 2: MENCARI HAMPIRAN TURUNAN DENGAN BEDA TENGAH
% Buatlah sebuah fungsi yang diberi nama bedaTengah.m yang akan mencari hampiran
% turunan suatu fungsi dengan hampiran beda tengah

fprintf('Part 2 : Mencari hampiran turunan dengan beda tengah \n');
p = 2;
h = 0.1;
dyp = bedaTengah(@(x)myfun(x),p,h)
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah \n');
fprintf(' -1.6824\n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 3: MEMBUAT TABEL HAMPIRAN TURUNAN UNTUK BERBAGAI NILAI h
% Buatlah sebuah fungsi void yang diberi nama diffTabel.m yang akan mencari hampiran
% turunan suatu fungsi untuk berbagai nilai h

fprintf('Part 3 : Membuat tabel hampiran turunan untuk berbagai nilai h \n');
h = [0.5 0.05 0.005 0.0005 0.00005 0.000005 0.0000005 0.00000005 0.000000005 0.0000000005 0.000000000005];
p = 2;
nilai_exact = -1.68294196961579;
diffTabel(@(x)myfun(x),p,h,nilai_exact);
fprintf('Kode yang anda kerjakan adalah benar jika terdapat tabel dengan tabel \n');
fprintf('yang kolom2nya adalah h, hampiran turunan dan erornya \n');
fprintf('Program Selesai. Tekan tombol apapun untuk lanjut\n\n');
pause;
close all;


% ==============================AKHIR KODE================================
% TIDAK MELAKUKAN PENGETIKAN KODE DI BAWAH GARIS INI AGAR LEBIH RAPI DALAM
% MELAKUKAN KODING DAN LEBIH DIMENGERTI.

% BONUS : 
% 1. COBALAH UNTUK MEMBUAT PROGRAM UNTUK MENCARI HAMPIRAN TURUNAN KEDUA
% 
% 2. COBALAH UNTUK MEMBUAT SEBUAH PROGRAM UNTUK MENCARI HAMPIRAN TURUNAN
%    PERTAMA DENGAN TINGKAT AKURASI YANG LEBIH TINGGI 


