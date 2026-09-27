program PembelianTiketBioskop;

var
  film, hari, jumlah: integer;
  harga, hargaAwal, diskon, total: real;

begin
  writeln('Pembelian Tiket Bioskop');
  writeln('1. Reguler - Rp30.000');
  writeln('2. 3D      - Rp45.000');
  writeln('3. IMAX    - Rp60.000');

  write('Pilih jenis film: ');
  readln(film);

  case film of
    1: harga := 30000;
    2: harga := 45000;
    3: harga := 60000;
  else
    begin
      writeln('Jenis film tidak valid');
      halt;
    end;
  end;

  writeln('1. Senin-Kamis');
  writeln('2. Jumat');
  writeln('3. Sabtu-Minggu');

  write('Pilih hari: ');
  readln(hari);

  case hari of
    1: harga := harga;
    2: harga := harga + 5000;
    3: harga := harga + 10000;
  else
    begin
      writeln('Hari tidak valid');
      halt;
    end;
  end;

  write('Masukkan jumlah tiket: ');
  readln(jumlah);

  if jumlah <= 0 then
    writeln('Jumlah tiket tidak valid')
  else
    begin
      hargaAwal := harga * jumlah;

      if hargaAwal >= 200000 then
        diskon := hargaAwal * 0.10
      else if hargaAwal >= 100000 then
        diskon := hargaAwal * 0.05
      else
        diskon := 0;

      total := hargaAwal - diskon;

      writeln('Hasil Pembayaran');
      writeln('Harga awal : Rp', hargaAwal:0:0);
      writeln('Diskon     : Rp', diskon:0:0);
      writeln('Total bayar: Rp', total:0:0);
    end;

  readln;
end.