NAME = Linal-Teormin

all: $(NAME).pdf

$(NAME).pdf: main.tex literature.tex preamble.sty sections/*
	latexmk -lualatex -jobname=$(NAME) main

clean:
	rm -f $(NAME)* lectures/*.aux

