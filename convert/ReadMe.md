
Converting xml files to plain text format
=========================================

The instance files are in xml format but can be converted to a plain text file using an xslt stylesheet. You need a stylesheet xml parser such as [xsltproc](http://xmlsoft.org/XSLT/xsltproc2.html).

Convert assignment problems to Tuyttens raw format
--------------------------------------------------

The instances in [Tuyttens00](https://github.com/MCDMSociety/MOrepo-Tuyttens00) use the following format:

    n 
    c^{0}_{0,0}... c^{0}_{0,n-1}
    c^{0}_{1,0}... c^{0}_{1,n-1}
    ...
    c^{0}_{n-1,0}... c^{0}_{n-1,n-1}
    c^{1}_{0,0}... c^{1}_{0,n-1}
    c^{1}_{1,0}... c^{1}_{1,n-1}
    ...
    c^{1}_{n-1,0}... c^{1}_{n-1,n-1}

where

-   *n* = dimension/size
-   *c*<sub>*r*, *c*</sub><sup>*k*</sup> = *k*'th cost of assigning row *r* to column *c*.

The biAP instances can be converted to this format using stylesheet `convert_to_tuyttens.xsl`. From R (or commandline) run:

``` r
system("xsltproc --output AP_instance_tuyttens.raw convert_to_tuyttens.xsl AP_instance.xml")
```

which generates file [AP\_instance\_tuyttens.raw](./AP_instance_tuyttens.raw) from the xml file [AP\_instance.xml](./AP_instance.xml).