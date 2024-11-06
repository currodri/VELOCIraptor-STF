##################################################################################
# VELOCIRAPTOR CMAKE OPTIONS FOR RAMSES COSMOLOGICAL HYDRO SIMULATION            #
#                                                                                #
# This script allows for an easy handling of the multiple cmake options that     #
# VELOCIraptor allows.                                                           #
# WARNING: This has only being prepared for Glamdring!                           #
# By: F. Rodriguez Montero 04/03/2021                                            #
##################################################################################

echo "###########################################################################"
echo
echo "   VELOCIRAPTOR CMAKE OPTIONS FOR RAMSES COSMOLOGICAL HYDRO SIMULATION"
echo "                                                                      v0.1 "
echo "###########################################################################"

# Load the required modules
module purge
module load intel-compilers/2024 
module load openmpi/5.0.1-intel
module load gcc/13.2


# External library flags
ELF="-DVR_MPI:BOOL=ON -DVR_MPI_REDUCE:BOOL=ON -DVR_OPENMP:BOOL=ON -DNBODY_OPENMP:BOOL=ON"

# Enable input/output formats
IOF="-DVR_HDF5:BOOL=ON -DVR_ALLOWPARALLELHDF5:BOOL=ON"

# Hydro simulations: activate extra data structures in the NBodylib Particle class
HF="-DVR_USE_GAS:BOOL=ON -DVR_USE_STAR:BOOL=ON"

# Operation flags
OF="-DVR_ZOOM_SIM:BOOL=ON"

echo "You are using the following flags:"
echo ${ELF} ${IOF} ${HF} ${OF}
echo "###########################################################################"
cmake .. ${ELF} ${IOF} ${HF} ${OF} "-DDEBUG:BOOL=OFF"


############################################################
echo
echo "                       Finished, now closing script"
echo "############################################################################## "
echo "############################################################################## "
echo "############################################################################## "
echo
############################################################
