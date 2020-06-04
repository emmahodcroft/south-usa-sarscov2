# Southern USA SARS-CoV-2
Runs from Southern USA States of SARSCoV2 data

For the moment this repository contains only runs from Texas, Louisiana, and a build called 'South Central' which includes Texas (332 - 324 missing location), Oklahoma (0), Louisiana (259 - 27 missing location), Arkansas (1), Mississippi (0), and New Mexico (0).

This repository is currently under construction. More details for these runs will be available soon.


You can view the live builds here:
- [Louisiana (state view)](https://nextstrain.org/community/emmahodcroft/south-usa-sarscov2/louisiana)
- [Louisiana (location view)](https://nextstrain.org/community/emmahodcroft/south-usa-sarscov2/louisiana?r=location)
- [Texas (state view)](https://nextstrain.org/community/emmahodcroft/south-usa-sarscov2/texas)
- [Texas (location view)](https://nextstrain.org/community/emmahodcroft/south-usa-sarscov2/texas?r=location)
- [South Central (state view)](https://nextstrain.org/community/emmahodcroft/south-usa-sarscov2/south-central)
- [South Central (location view)](https://nextstrain.org/community/emmahodcroft/south-usa-sarscov2/south-central?r=location)

## Running the build

To run this repository, you need to have a copy or version of the [ncov]() Nextstrain repository running, as this repository builds on that base, and just does a more 'specific' run with the same data. Visit the `ncov` repository above for a guide on getting this run going.

Once you're able to run a basic build of the `ncov` repository, clone this repository into a folder which sits in the same directory as the `ncov` repository. Currently, the profile given here is specified to run on Emma's local compute cluster. You may need to change these settings to match your own cluster or local setup.

To run locally (without any advanced cluster submission) comment out line 20 in `profiles/south-central/config.yaml`, which specifies the cluster submission options (`cluster: "sbatch --time=....`) before trying to run the pipeline.
You can run the entire 'South-Central' profile (which includes Texas, Louisiana, & South-Central builds) by running
```
snakemake --profile ../south-usa-sarscov2/profiles/south-central/
```

You may also have to specify the number of cores available.

The main build instructions are in `profiles/south-central/builds.yaml` -- this outlines the builds to run, and what sampling to use, as well as some other options.
