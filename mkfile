
results/%.ok:	data/%.manifest
	java -jar webin-cli-3.1.0.jar -context reads \
		-userName '<user>' \
		-password '<password>' \
		-manifest $prereq \
		-outputDir outputDir \
		-inputDir '/labs/lgc/mamamit/data_mtDNA/' \
		-submit \
		&& touch $target
	
