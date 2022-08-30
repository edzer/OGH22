TARGET	= rv

all:
	make edit
	make $(TARGET).html

edit:
	vi $(TARGET).qmd

$(TARGET).html: $(TARGET).qmd
	quarto render $(TARGET).qmd --to html

view:
	google-chrome $(TARGET).html

dock:
	docker run -ti --rm -v ~/Downloads:/Downloads arrow
