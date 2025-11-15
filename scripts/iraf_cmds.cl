# iraf_cmds.cl
# Example IRAF command sequence for basic image preparation,
# star selection, and image subtraction workflow.
# Customize paths, filenames, and parameters for your dataset.

# Reset IRAF tasks
unlearn daophot
unlearn noao
unlearn imred
unlearn ccdred

# --- Setup ---
set udata = "/path/to/data/"
set uout = "/path/to/output/"
set rawimg = "@raw_images.list"     # list of raw frames
set refimg = "ref.fits"              # reference image
set sciimg = "science.fits"          # science image

# --- 1. Basic CCD calibration (if needed) ---
# ccdproc (rawimg, output="proc_", overscan-, trim-, zerocor+, darkcor-, flatcor-)

# --- 2. Display image for star selection ---
display (sciimg, 1)

# --- 3. Run daofind to detect stars ---
daofind (sciimg, output="stars.coo", fwhmpsf=3.0, sigma=10.0, threshold=5.0)

# --- 4. Examine detected stars and create a clean comparison-star list ---
# (User typically edits stars.coo manually or filters in Python later)
# Example: tvmark to overlay detected stars
# tvmark (1, "stars.coo", mark="circle", radii=10)

# --- 5. Photometry of selected stars (if needed) ---
# phot (sciimg, coords="stars.coo", output="stars.mag", apertures="5,10")

# --- 6. Image subtraction (HOTPANTS or ISIS)
# IRAF doesn't include HOTPANTS natively; this block is a placeholder.
# You would run HOTPANTS externally, but keep a record here.
# !hotpants -inim sciimg -tmplim refimg -outim sub.fits -tu 30000 -tuk 3 -iu 30000 -ik 3

# --- 7. Inspect subtracted image ---
display ("sub.fits", 2)
