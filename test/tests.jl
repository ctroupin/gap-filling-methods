# Testing the functions

include("../src/GapFilling.jl")
const testdoi = "10.5194/adgeo-28-29-2010";
bibtexentry = GapFilling.doi2bib(testdoi)

@test bibtexentry == " @article{Barth_2010, title={A web interface for griding arbitrarily distributed in situ data based on Data-Interpolating Variational Analysis (DIVA)}, volume={28}, ISSN={1680-7359}, url={http://dx.doi.org/10.5194/adgeo-28-29-2010}, DOI={10.5194/adgeo-28-29-2010}, journal={Advances in Geosciences}, publisher={Copernicus GmbH}, author={Barth, A. and Alvera-Azcárate, A. and Troupin, C. and Ouberdous, M. and Beckers, J.-M.}, year={2010}, month=Sept, pages={29–37} }\n"
