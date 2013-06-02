# Improving the Architecture of Calico
This repository contains my Master's Thesis and all related files.

## Abstract
Calico is a software design sketching tool that aims to support software designers by helping them work through a design problem by sketching potential solutions. Calico was designed to be used with an interactive whiteboard so that it can replicate the feel of a traditional whiteboard while at the same time enabling advanced functionality. 

There were three main problems with the original version of Calico: (1) distributed designers were not well supported, (2) collaboration was not natively supported, and (3) it was very difficult to add new functionality. This thesis examines these problems and presents various solutions: (1) creating a performance-based network architecture, (2) centering Calico around collaboration, and (3) creating a plugin framework to easily add new functionality.

Prior to this work, Calico was unable to meet the demands of designers in the field. By resolving these problems, Calico was able to be deployed both in-house in our design lab, as well as in Informatics 122 (a software design course).

## Running
To compile and view the PDF, just run `make go` at the command line.
