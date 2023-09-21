
all: home-index \
	publications-index \
	activities-index \
	teaching-index \
	student-projects-index \
	systems-index \
	slides-index

home-index:
	cp index-head.html index.html
	cat index-body.html >> index.html

activities-index:
	cp index-head.html activities/index.html
	cat activities/index-body.html >> activities/index.html

teaching-index:
	cp index-head.html teaching/index.html
	cat teaching/index-body.html >> teaching/index.html

student-projects-index:
	cp index-head.html student-projects/index.html
	cat student-projects/index-body.html >> student-projects/index.html

systems-index:
	cp index-head.html systems/index.html
	cat systems/index-body.html >> systems/index.html

slides-index:
	cp index-head.html slides/index.html
	cat slides/index-body.html >> slides/index.html

publications-index: publications/peter.bib publications/index.html

publications/peter.bib: ~/texmf/bib/peter.bib
	cp ~/texmf/bib/peter.bib publications/peter.bib

publications/index.html: ~/texmf/bib/peter.bib
	cp index-head.html publications/index.html
	(cd ~/texmf/bib/ ; makeit html )
	cat ~/texmf/bib/peter.html >> publications/index.html
	cp ~/texmf/bib/peter-*.html publications/
	cp ~/texmf/bib/peter-*.bib publications/

clean:
	(cd ~/texmf/bib/ ; makeit clean )
	rm -f index.html
	rm -f publications/index.html
	rm -f publications/peter-*.html
	rm -f publications/peter-*.bib
	rm -f activities/index.html
	rm -f teaching/index.html
	rm -f systems/index.html
	rm -f slides/index.html
