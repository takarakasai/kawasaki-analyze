
SRC = *.dot

%.png : %.dot
	dot $< -o $@ -Tpng
PNGS = $(patsubst %.dot,%.png,$(SRC))
output: $(PNGS)
	ls $(PNGS)

clean:
	rm $(PNGS)

disp:
	gnome-open $(PNGS)
