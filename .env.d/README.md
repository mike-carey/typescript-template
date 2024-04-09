# Static environment variables

All `.env` files within this directory will be loaded into the environment.  By keeping separate files for different use cases, we can sync the files from the template.  No secrets should be stored within this directory.

Secrets will not be stored; however, if a `.example` file is found, it will copy it over as `.secret` and secrets can be stored there.
