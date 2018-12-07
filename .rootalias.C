/*
double _r(double x, double y) { return std::sqrt(std::pow(x,2)+ std::pow(y,2));}
double _r(fcc::PositionedTrackHit h1) { return _r(h1.position().x, h1.position().y);}
TLorentzVector _lv(fcc::Point p) {return TLorentzVector(p.x, p.y, p.z, 0);}
TLorentzVector _lv(fcc::LorentzVector p) {return TLorentzVector(p.px, p.py, p.pz, p.mass);}

double _pt(fcc::LorentzVector p) {return std::sqrt(p.px*p.px + p.py*p.py);}
double _eta(fcc::LorentzVector p) {return _lv(p).Eta();}
double _eta(fcc::MCParticle p) {return _lv(p.core().p4).Eta();}
double _px(fcc::MCParticle p) { return p.core().p4.px;}

*/


