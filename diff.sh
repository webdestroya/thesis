#!/bin/bash

latexdiff-git $1 thesis.tex chapters/introduction.tex chapters/background.tex chapters/calico.tex chapters/conclusion.tex chapters/high_level_architecture.tex chapters/implementation.tex chapters/objectives.tex chapters/implementation/admin_ui.tex chapters/implementation/input_handling.tex chapters/implementation/networking.tex chapters/implementation/object_controllers.tex chapters/implementation/object_storage.tex chapters/implementation/plugin_framework.tex



#mv thesis-diff.pdf output/
#rm texput.log thesis-diff.*

#open output/thesis-diff.pdf
open thesis-diff.pdf

rm thesis-diff.bbl thesis-diff.blg thesis-diff.lof thesis-diff.log thesis-diff.lot thesis-diff.out thesis-diff.tex-tmp thesis-diff.toc