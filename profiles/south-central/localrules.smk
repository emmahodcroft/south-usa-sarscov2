localrules: filter, partition_sequences, aggregate_alignments, mask, subsample_focus, subsample_context, subsample_regions, adjust_metadata_regions, clades, colors, recency, export, incorporate_travel_history, fix_colorings, all_regions, export_all_regions, export_gisaid, incorporate_travel_history_gisaid, incorporate_travel_history_zh, export_zh, dated_json, fix_colorings_zh, fix_colorings_gisaid

rule combine_texas:
    input:
        alignment_rest_texas = "results/texasnew/sample-resttexas.fasta",
        alignment_houston = "results/texasnew/sample-houston.fasta"
    output:
        alignment_texas = "results/texasnew/sample-texas.fasta"
    shell:
        """
        cat {input.alignment_rest_texas} {input.alignment_houston} > {output.alignment_texas}
        """

rule combine_houston:
    input:
        alignment_rest_texas = "results/houston/sample-resttexas.fasta",
        alignment_houston = "results/houston/sample-houston.fasta"
    output:
        alignment_texas = "results/houston/sample-texas.fasta"
    shell:
        """
        cat {input.alignment_rest_texas} {input.alignment_houston} > {output.alignment_texas}
        """