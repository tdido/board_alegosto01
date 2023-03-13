rule nanoplot:
	input: "toulligqc_demo_data/sequencing_summary.txt" 
        output: 
	conda: "NanoPlot/nanoplot.yaml"
	shell: "NanoPlot --summary toulligqc_demo_data/sequencing_summary.txt -o nanoplot_output"
