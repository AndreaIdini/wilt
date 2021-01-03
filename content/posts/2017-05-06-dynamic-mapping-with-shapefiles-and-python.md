---
title: Dynamic mapping with Shapefiles and python
author: Andrea Idini
type: post
date: 2017-05-06T15:50:55+00:00
url: /2017/05/06/dynamic-mapping-with-shapefiles-and-python/
nkweb_code_in_head:
  - default
nkweb_Use_Custom_js:
  - default
nkweb_Use_Custom_Values:
  - default
nkweb_Use_Custom:
  - 'false'
categories:
  - Coding
  - Informatics
  - Science
  - Technology
tags:
  - coding
  - datascience
  - github
  - Maps

---
In a two days coding challenge over workers day holiday, I decided to play with maps as means to plot information. What I decided to are use are the widely available _shapefiles_ and python _matplotlib_ packages, using mainly _pandas_ and _numpy_ to analyse data.

You can find everything in this [git repository][1].

First of all you can start familiarising with shapefiles by plotting the pure patches, as in function mP in mapPlot.py.

You need these packages:

<pre class="EnlighterJSRAW" data-enlighter-language="python">import shapefile
from matplotlib.patches import Polygon
import matplotlib
import numpy as np</pre>

and you start by reading the file  `flnm` in this way:

<pre class="EnlighterJSRAW" data-enlighter-language="python">sf = shapefile.Reader(flnm)
shapes = sf.shapes()
Nshp = len(shapes)</pre>

records all the properties of your map, in particular the shapes attribute (records attribute contains the dataset that varies from file to file) and the length of the shapefile. And you are just need to cycle over the patches to build a Polygon array in matplotlib,

<pre class="EnlighterJSRAW" data-enlighter-language="python">ptchs   = []
for nshp in xrange(Nshp):
    pts     = np.array(shapes[nshp].points)
    prt     = shapes[nshp].parts
    par     = list(prt) + [pts.shape[0]]

    for pij in xrange(len(prt)):
       ptchs.append(Polygon(pts[par[pij]:par[pij+1]]))</pre>

that can be finally plotted in the usual matplotlib way,

<pre class="EnlighterJSRAW" data-enlighter-language="python" data-enlighter-theme="git">fig     = plt.figure()
ax      = fig.add_subplot(111)

ax.add_collection(PatchCollection(patches,facecolor='0.75', edgecolor='w', linewidths=.2))
ax.axis('auto'); ax.axis('off')
plt.show()</pre>

<p style="padding-left: 30px;">
  <code></code>
</p>

to get the final map.

<div id="attachment_256" style="width: 870px" class="wp-caption aligncenter">
  <a href="/wp-content/uploads/sites/4/2017/05/map_1.png" rel="lightbox[249]"><img aria-describedby="caption-attachment-256" class="wp-image-256 size-large" src="/wp-content/uploads/sites/4/2017/05/map_1-1024x768.png" alt="" width="860" height="645" srcset="/wp-content/uploads/sites/4/2017/05/map_1-1024x768.png 1024w, /wp-content/uploads/sites/4/2017/05/map_1-300x225.png 300w, /wp-content/uploads/sites/4/2017/05/map_1-768x576.png 768w, /wp-content/uploads/sites/4/2017/05/map_1-347x260.png 347w, /wp-content/uploads/sites/4/2017/05/map_1.png 1280w" sizes="(max-width: 860px) 100vw, 860px" /></a>
  
  <p id="caption-attachment-256" class="wp-caption-text">
    Map of England divided by postcodes sections. From https://borders.ukdataservice.ac.uk/
  </p>
</div>

However, just juxtaposing patches is not ideal. Libraries like _basemap_ have inclusive and sophisticated routines to correcting for coma, geodetic aberrations and have more interesting options regarding plotting scales, legends...etc...

One has to import a little bit more stuff,

<pre class="EnlighterJSRAW" data-enlighter-language="null">import pandas as pd
import matplotlib.pyplot as plt
from mpl_toolkits.basemap import Basemap
from shapely.geometry import Point, Polygon, MultiPoint, MultiPolygon
from matplotlib.collections import PatchCollection
from descartes import PolygonPatch
import fiona</pre>

but the generalization and flexibility gained is worth it.

Use mP_Basemap_ _open the file using _fiona,_

<pre class="EnlighterJSRAW" data-enlighter-language="python">shp = fiona.open(flnm)
bds = shp.bounds</pre>

_fiona_ enables to extract the bounds of map simply with .bounds command, then the bounds can be used as latitude and longitude extremes in _basemap_ plotting routine

<pre class="EnlighterJSRAW" data-enlighter-language="python">m = Basemap(
    projection='tmerc',
    lon_0=-2.,
    lat_0=49.,
    ellps = 'WGS84',
    llcrnrlon=bounds[0] - extra * (bounds[2]-bounds[0]),
    llcrnrlat=bounds[1] - extra + 0.01 * (bounds[3]-bounds[1]),
    urcrnrlon=bounds[2] + extra * (bounds[2]-bounds[0],
    urcrnrlat=bounds[3] + extra + 0.01 * (bounds[3]-bounds[1]),
    lat_ts=0,
    resolution='i',
    suppress_ticks=True)</pre>

WGS84 is the chosen geodetic coordinate, have a look on the README.md and on the script inside the `Map/` directory for further information on how to convert coordinate systems.

After this you can build a dataframe containing not only frames, but also the data of the shapefile, for example the ward name or properties in the case the map is containing those data,

<pre class="EnlighterJSRAW" data-enlighter-language="python"># set up a map dataframe
df_map = pd.DataFrame({
    'poly': [Polygon(xy) for xy in m.map]
    ,'properties': [ward['name'] for ward in m.map_info]
    })
df_map['area_m'] = df_map['poly'].map(lambda x: x.area)
df_map['area_km'] = df_map['area_m'] / 10000.

# draw ward patches from polygons
df_map['patches'] = df_map['poly'].map(lambda x: PolygonPatch(
    x,
    fc='#555555',
    ec='#787878', lw=.75, alpha=.9,
    zorder=4))</pre>

to plot, use `df_map['patches']` which contains the array of patches.

You can use the ratio between `bounds` to have a correct figure scaling, and the `ellps` guarantees you the correct coordinate representation.

Have a look in the function files on github for the [complete functions][2].

After having obtained the dataframe, you can start by using it. You can <code class="EnlighterJSRAW" data-enlighter-language="python">print m.map_info</code> to realise what type of labels are inside the map properties. More in general I used to import the dictionary keys related to `map_info`, inside a dataframe in this fashion

<pre class="EnlighterJSRAW" data-enlighter-language="python">for dicti in m.map_info:
    temp_df = temp_df.append(pd.Series(dicti),ignore_index=True)</pre>

and with <code class="EnlighterJSRAW" data-enlighter-language="null">colnames = list(df.columns.values</code> you can eventually get a full list of column names to elaborate and automatise your shapefile analysis.

The map that I use has postcode sectors throughout the whole England, in the column `'label'`.  It joins the DataFrame of this map with an imported DataFrame of data, which has postcode sectors  in the column `'Sector'`,  keeping only the data that appears in both

<pre class="EnlighterJSRAW" data-enlighter-language="python">i1 = temp_df.set_index('label').index
    i2 = df.set_index('Sector').index

    temp_df = temp_df[i1.isin(i2)]

#Select only the part that corresonds to the imported dataframe of data
    df_map = pd.concat([df_map, temp_df], axis=1, join='inner')
</pre>

This new map concerns only the part of the map that is also in the imported dataset.

Using Jenks natural breaks algorithm to color the map, and using the dataset of mortgages selected for postcodes over the Greater London area, the result is the following:

<div id="attachment_258" style="width: 870px" class="wp-caption aligncenter">
  <a href="/wp-content/uploads/sites/4/2017/05/map_2.png" rel="lightbox[249]"><img aria-describedby="caption-attachment-258" class="wp-image-258 size-large" src="/wp-content/uploads/sites/4/2017/05/map_2-1024x680.png" alt="" width="860" height="571" srcset="/wp-content/uploads/sites/4/2017/05/map_2-1024x680.png 1024w, /wp-content/uploads/sites/4/2017/05/map_2-300x199.png 300w, /wp-content/uploads/sites/4/2017/05/map_2-768x510.png 768w, /wp-content/uploads/sites/4/2017/05/map_2-392x260.png 392w, /wp-content/uploads/sites/4/2017/05/map_2.png 1280w" sizes="(max-width: 860px) 100vw, 860px" /></a>
  
  <p id="caption-attachment-258" class="wp-caption-text">
    Map of Greater London divided by postcodes sections. Colored using Jenks algorithm regarding mortgages quantities in any postcode in Q3 2016.<br /> Map from https://borders.ukdataservice.ac.uk/<br /> Data from <a href="https://www.cml.org.uk/industry-data/about-postcode-lending/">CML</a>
  </p>
</div>

The data has been taken from [CML][3] in this case, the .xlsx spreadsheet has been analysed with `openpyxl` in order to extract a DataFrame containing only rows including a name (e.g. London or Manchester) effectively isolating a geographic area together with the intersection above.

The spreadsheet contains then mortgages totals for every quarters between 2012 and 2016 Q3. One can use this data to synthesise an index indicating  the market health.

With only 16 datapoints in the time series any complicated time series analysis (i.e. any type of self regression or machine learning approach based on the time-series) is a steep road. I started by considering the most elementary condition of the market: an ordinary least squares (OLS) for a linear regression.

Many of the most stable results for the best sectors and districts, were, in fact, very well approximating a growing market.

Naively, best conditions you can have is a market which is already stable and has a good capital to start with, and then grows in a stable and sustainable fashion. If an area is deviating from this regime is more risky to invest in, so if the linear fit has an error on slope an intercept these can be simple accounted by subtraction in the index.

For this reason the first index I tried to build out of these data is simply given by the parameters of the OLS: slope <span><img src="/wp-content/plugins/latex/cache/tex_6f8f57715090da2632453988d9a1501b.gif"/></span>, intercept 
<span><img src="/wp-content/plugins/latex/cache/tex_7694f4a66316e53c8cdd9d9954bd611d.gif"/></span>, and errors on slope 
<span><img src="/wp-content/plugins/latex/cache/tex_6169448e85e6cc09773971899abdd179.gif"/></span> and intercept 
<span><img src="/wp-content/plugins/latex/cache/tex_5b9d728fda928ca196d7ed12a660b2c4.gif"/></span>.

The index <span><img src="/wp-content/plugins/latex/cache/tex_9dd4e461268c8034f5c8564e155c67a6.gif"/></span> follows the OLS,
$$
x = \textrm{sign} (m - \langle m \rangle) \frac{(m - \langle m \rangle)^2}{\langle \sigma_m \rangle^2} + \textrm{sign} (q -\langle q \rangle) \frac{(q - \langle q \rangle)^2}{\langle \sigma_q \rangle^2} -\frac{(\sigma_m - \langle \sigma_m \rangle)^2}{\langle \sigma_m \rangle^2} - \frac{(\sigma_q-\langle \sigma_q \rangle)^2}{\langle \sigma_q \rangle^2} ,
$$
where <span><img src="/wp-content/plugins/latex/cache/tex_9f2389478742ec98f594ef69e07dc56b.gif"/></span> indicates the average value of the slope across the dataset.

This model is not deprived of defects and deficiencies, but is good first approximation and try to this dataset yielding sensible results over a vast geographical area.

The final result (with a primitive scale and the correct aspect ratio enabled) for the London area is in the following figure.

<div id="attachment_262" style="width: 870px" class="wp-caption aligncenter">
  <a href="/wp-content/uploads/sites/4/2017/05/map_3.png" rel="lightbox[249]"><img aria-describedby="caption-attachment-262" class="wp-image-262 size-large" src="/wp-content/uploads/sites/4/2017/05/map_3-1024x768.png" alt="" width="860" height="645" srcset="/wp-content/uploads/sites/4/2017/05/map_3-1024x768.png 1024w, /wp-content/uploads/sites/4/2017/05/map_3-300x225.png 300w, /wp-content/uploads/sites/4/2017/05/map_3-768x576.png 768w, /wp-content/uploads/sites/4/2017/05/map_3-347x260.png 347w, /wp-content/uploads/sites/4/2017/05/map_3.png 1280w" sizes="(max-width: 860px) 100vw, 860px" /></a>
  
  <p id="caption-attachment-262" class="wp-caption-text">
    Map of Greater London divided by postcodes sections. Colored using Jenks algorithm regarding <span><img src="/wp-content/plugins/latex/cache/tex_9dd4e461268c8034f5c8564e155c67a6.gif"/></span> index between Q1 2012 and Q3 2016. Map from https://borders.ukdataservice.ac.uk/<br /> Data from<br /> https://www.cml.org.uk/industry-data/about-postcode-lending/
  </p>
</div>

Again, I remind you about the [github repository][4] for the complete and hopefully working code (I understand it needs refactoring and debugging, is only a two days challenge) and further details. Please write me for any comment or insult.

_Andrea Idini._

 [1]: https://github.com/AndreaIdini/MapWorld
 [2]: https://github.com/AndreaIdini/MapWorld/blob/master/mapPlot.py
 [3]: https://www.cml.org.uk/industry-data/about-postcode-lending/
 [4]: https://github.com/AndreaIdini