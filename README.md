## General introduction to 'barcodePrimer'
This tiny package was proposed to generate random combinations of barcoded primers for sequencing multiple samples in one sequencing run. The general idea is to remove the combinations with self-dimers of single primer (i.e. either forward or reverse barcoded primer itself) and cross-dimers of primer sets (i.e. forward-reverse barcoded primer combinations) because primer dimers are likely to reduce binding efficiency and therefore lead to insifficient PCR yield or failure in PCR. This process will theoretically help users to avoid potential 'bad' primer combinations and save time in PCR process. In addition, this package will generate random combinations of 'right' barcoded primer sets. It should be noted that the filtering with this package will help users to avoid 'bad' combinations as much as possible. However, some of the resultant primer sets may still fail in practice.
## Regarding primer identifier
For technical reasons, the identifiers for barcoded primers must follow structured format. The forward primer labels must end with 'forward' or 'for' (case insensitive), connected other info with '_' or '-', e.g. 'Uni515-10-For'. Similarly, the reverse identifiers end with 'reverse' or 'rev' (case insensitive).
## How to get primer check report?
The package is developed upon the primer check result by Multiple Primer Analyzer of Thermo Fisher Scientific and so far only support primer chec result by the above mentioned tool. Please input primers in 'two column format', with 1st column of primer identifier and 2nd column of sequence of barcoded primer (barcode+primer). It is recommended to set "Value of the sensivity for dimmer detection" to 1 for maximum sensitive detection. After the online check, the resultant txt file (not the tabular result) can be used as 'report' file into this package. Please use readLines() to read this file into R and analyze with this package.
## How to install this package from github?
library(devtools)

install_github('cam315/barcodePrimer')
## Questions
If you have any questions, please report in ‘Issues' or directly contact me at yanglzu@163.com.
