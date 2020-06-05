
//TStyle* fcc_thesis_style = new TStyle("fcc_thesis_style", "FCC thesis style");

{
gStyle->SetPadTopMargin(0.055);
gStyle->SetPadBottomMargin(0.16);
gStyle->SetPadLeftMargin(0.13);
gStyle->SetPadRightMargin(0.035);

gStyle->SetCanvasDefW(1586);
gStyle->SetCanvasDefH(1120); 

gStyle->SetLabelSize(0.05, "XYZ");
gStyle->SetLabelOffset(0.007, "XYZ");

gStyle->SetTitleSize(0.05, "XYZ");
gStyle->SetTitleXOffset(1.2);
gStyle->SetTitleYOffset(1.2);

gStyle->SetOptStat(0);
}

//fcc_thesis_style->cd();



TColor *color0 = new TColor(2000,  27. / 256., 158. / 256., 119. / 256.);
TColor *color1 = new TColor(2001, 217. / 256.,  95. / 256.,   2. / 256.);
TColor *color2 = new TColor(2002, 117. / 256., 112. / 256., 179. / 256.);

TColor *color3 = new TColor(2015, 228. / 256.,  26. / 256.,  28. / 256.);
TColor *color4 = new TColor(2011,  55. / 256., 126. / 256., 184. / 256.);
TColor *color5 = new TColor(2012,  77. / 256., 175. / 256.,  74. / 256.);
TColor *color6 = new TColor(2013, 152. / 256.,  78. / 256., 163. / 256.);
TColor *color7 = new TColor(2014, 255. / 256., 127. / 256.,   0. / 256.);

