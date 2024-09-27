# Build Script for mondrian

# Remove local_manifests directory
rm -rf .repo/local_manifests

# Init cr
repo init -u https://github.com/crdroidandroid/android.git -b 14.0 --git-lfs
# Clone the manifest repository
git clone https://github.com/keosh1/local_manifests.git -b main .repo/local_manifests

# Force sync the repository
repo sync --force-sync -c -j $(nproc)

# Set up the build environment
source build/envsetup.sh

# Lunch for mondrian device
brunch mondrian

wget https://gitlab.com/cupid-development/automated-builds/-/raw/main/repopicks.sh
bash repopicks.sh lineage
