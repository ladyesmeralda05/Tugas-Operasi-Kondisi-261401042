program PenentuanBeasiswa;

var
  ipk, penghasilan: real;
  prestasi: integer;
begin
  writeln('Program Penentuan Beasiswa');

  write('Masukkan IPK: ');
  readln(ipk);

  write('Masukkan penghasilan orang tua: Rp ');
  readln(penghasilan);

  write('Masukkan jumlah prestasi: ');
  readln(prestasi);

  writeln;
  writeln('Hasill Seleksi');

  if ipk < 2.75 then
    writeln('IPK Tidak Memenuhi Syarat')

  else if (ipk >= 3.75) and
          (penghasilan <= 5000000) and
          (prestasi >= 2) then
    writeln('Mendapatkan Beasiswa Penuh')

  else if (ipk >= 3.50) and
          (penghasilan <= 7000000) and
          (prestasi >= 1) then
    writeln('Mendapatkan Beasiswa Sebagian')

  else if (ipk >= 3.50) and
          (penghasilan > 7000000) then
    writeln('Penghasilan Tidak Memenuhi Syarat')

  else
    writeln('Tidak Mendapatkan Beasiswa');

  readln;
end.