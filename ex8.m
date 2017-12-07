% Tutorial Minggu ke-6
% MENCARI APROKSIMASI INTEGRAL 
% 
% File ini akan memanggil beberapa kode dan anda harus melengkapi kode tersebut
% untuk mencari hampiran turunan beberapa fungsi
% 
% File latihan :    
%     1. myfun.m
%     2. trapesium.m
%     3. simpson.m
%     4. 
%     
% Pada latihan ini, anda tidak perlu mengotak-atik code pada file ini 
% anda cukup membuat kode program pada file-file diatas.
% 
% 
%==========================================================================
% PART 1: MENDEFINISIKAN FUNGSI YANG AKAN DICARI INTEGRALNYA
% Buatlah sebuah fungsi yang diberi nama myfun.m yang isinya adalah fungsi
% yang akan dicari integralnya.
% Bualah kode yang merepresentasikan fungsi f(x) = 1/(1+x^2)

clc;
clear;
close all;
x = [-1; -0.5; 0; 0.5; 1]; 
fprintf('Part 1 : Mendefinisikan fungsi yang akan dicari integralnya \n');
y = myfun(x)
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah  \n');
fprintf('y =  0.50000 0.80000 1.00000 0.80000 0.50000 \n');
fprintf('Tekan tombol apapun untuk lanjut \n\n');
pause;

%==========================================================================
% PART 2: MENCARI HAMPIRAN INTEGRAL F(X) DENGAN COMPOSITE TRAPESIUM
% Buatlah sebuah fungsi yang diberi nama trapesium.m yang akan mencari hampiran
% integral suatu fungsi dengan metode composite trapesium

fprintf('Part 2 : Mencari hampiran integral dengan metode composite trapesium \n');
a = -2; %batas bawah integrasi
b = 2; %batas atas integrasi
M = 10; %jumlah partisi/subinterval
T = trapesium(@(x)myfun(x),a,b,M)
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah \n');
fprintf('2.2100 \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 3: MENCARI HAMPIRAN INTEGRAL F(X) DENGAN COMPOSITE SIMPSON
% Buatlah sebuah fungsi yang diberi nama simpson.m yang akan mencari hampiran
% integral suatu fungsi dengan metode composite simpson

fprintf('Part 3 : Mencari hampiran integral dengan metode composite Simpson \n');
a = -2; %batas bawah integrasi
b = 2; %batas atas integrasi
M = 10; %jumlah partisi/subinterval
S = simpson(@(x)myfun(x),a,b,M)
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah \n');
fprintf('2.2150 \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 4: MENCARI HAMPIRAN INTEGRAL F(X) DENGAN TABEL ROMBERG
% Buatlah sebuah fungsi yang diberi nama romberg.m yang akan mencari hampiran
% integral secara rekursif 

fprintf('Part 4 : Mencari hampiran integral dengan metode Romberg \n');
a = -2; %batas bawah integrasi
b = 2; %batas atas integrasi
n = 5; %jumlah maximum baris dalam tabel
R = romberg(@(x)myfun(x),a,b,n)
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah \n');
fprintf('2.2145 \n');
fprintf('Program Selesai. Tekan tombol apapun untuk lanjut\n\n');
pause;
close all;


% ==============================AKHIR KODE================================
% TIDAK MELAKUKAN PENGETIKAN KODE DI BAWAH GARIS INI AGAR LEBIH RAPI DALAM
% MELAKUKAN KODING DAN LEBIH DIMENGERTI.

% BONUS : 
% 1. COBALAH UNTUK MEMBUAT PROGRAM ROMBERG NAMUN KRITERIA PENGHENTIAN 
%    ITERASINYA ADALAH TOLERANSI EROR
% 
% 2. COBALAH UNTUK MEMBUAT SEBUAH PROGRAM MENCARI INTEGRAL NAMUN DENGAN
%    METODE GAUSS 1 TITIK, 2 TITIK dan 3 TITIK


