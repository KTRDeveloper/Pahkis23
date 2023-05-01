all:
	##################################################
	###               kissat_mab                   ###
	##################################################
	chmod a+x kissat_mab/configure kissat_mab/scripts/*.sh
	cd kissat_mab && ./configure --quiet --compact --no-proofs
	+ $(MAKE) -C kissat_mab

	##################################################
	###                 PaInleSS                   ###
	##################################################
	+ $(MAKE) -C painless-src
	mv painless-src/painless PaKis

clean:
	##################################################
	###                 PaInleSS                   ###
	##################################################
	+ $(MAKE) clean -C painless-src
	+ $(MAKE) clean -C kissat_mab
	rm -f PaKis
