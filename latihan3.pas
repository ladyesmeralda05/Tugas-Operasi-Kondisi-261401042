program PemesananMakanan;

var
  kode, jumlah, status: integer;
  harga, total, diskon, bayar: real;

begin
  writeln('Pemesanan Makanan');
  writeln('1. Nasi Goreng  - Rp20.000');
  writeln('2. Mie Goreng   - Rp18.000');
  writeln('3. Ayam Geprek  - Rp25.000');
  writeln('4. Steak        - Rp50.000');

  write('Masukkan kode makanan: ');
  readln(kode);

  case kode of
    1: harga := 20000;
    2: harga := 18000;
    3: harga := 25000;
    4: harga := 50000;
  else
    begin
      writeln('Kode makanan tidak valid');
      halt;
    end;
  end;

  write('Masukkan jumlah pesanan: ');
  readln(jumlah);

  if jumlah <= 0 then
    begin
      writeln('Jumlah pesanan tidak valid');
      halt;
    end
  else if jumlah > 10 then
    begin
      writeln('Pesanan terlalu banyak');
      halt;
    end;

  writeln('1. Member');
  writeln('2. Non-member');
  write('Pilih status pelanggan: ');
  readln(status);

  total := harga * jumlah;

  case status of
    1:
      begin
        if total >= 100000 then
          diskon := total * 0.15
        else if total >= 50000 then
          diskon := total * 0.10
        else
          diskon := total * 0.05;
      end;

    2:
      begin
        if total >= 100000 then
          diskon := total * 0.05
        else
          diskon := 0;
      end;
  else
    begin
      writeln('Status pelanggan tidak valid');
      halt;
    end;
  end;

  bayar := total - diskon;

  writeln;
  writeln('Hasil Pembayaran');
  writeln('Harga makanan : Rp', harga:0:0);
  writeln('Total harga   : Rp', total:0:0);
  writeln('Diskon        : Rp', diskon:0:0);
  writeln('Total bayar   : Rp', bayar:0:0);

  readln;
end.