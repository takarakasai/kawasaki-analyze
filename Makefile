
SRC = kasawaki-win-category.dot

%.png : %.dot
	dot $< -o $@ -Tpng
PNGS = $(patsubst %.dot,%.png,$(SRC))

show: $(PNGS)
	echo $(PNGS)

output: $(PNGS)
	ls $(PNGS)

clean:
	rm $(PNGS)

disp:
	gnome-open $(PNGS)
