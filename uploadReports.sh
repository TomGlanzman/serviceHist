#!/bin/bash

## Upload all .txt report files from laptop to SLAC

echo "To AFS..."
scp /Users/tom/Projects/serviceHist/*.txt dragon@comet2.slac.stanford.edu:/home/dragon/ah/public_html/DESC/serviceHist

echo "To s3dfdtn..."
scp /Users/tom/Projects/serviceHist/*.txt dragon@s3dfdtn.slac.stanford.edu:/sdf/home/d/dragon/public_html/DESC/serviceHist


