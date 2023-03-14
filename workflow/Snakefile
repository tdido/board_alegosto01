rule all:
    input:
        "results/nanoplot/20220517",
        "results/nanoplot/20220523",

rule nanoplot:
	input:
        summary=""
    output:
        d=directory("results/nanoplot"),
	conda: "envs/nanoplot.yaml"
    log:
        o="log/nanoplot/nanoplot.log",
        e="log/nanoplot/nanoplot.err"
    benchmark: "log/nanoplot/nanoplot.bmk"
    threads: 8
    resources:
        mem_mb=64000,
        runtime=120
	shell: """
        NanoPlot --summary {input.summary} -o nanoplot_output > {log.o} 2> {log.e}
    """
