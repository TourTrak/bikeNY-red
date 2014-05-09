/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 *
 * Major modifications made to template by @tofferrosen for the 
 * TD 5 boro bike tour
 *  1) Replaced the european signage w/ the US signage. Borrwoed
 *     frrom the MapQuest style.
 *  2) Modified the line widths for highways, primary roads, etc.
 *  3) Neighboor hood information
 *  4) Highlight the 5 boros better
 *  5) Color palate to make things look awesome!

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { 
  font-directory: url(./fonts);
  buffer-size: 128;
}

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #F1EEDF;
@water:             #719299;
@grass:             #ACD6A4;
@beach:             #FFEEC7;
@park:              #9CD092;
@cemetery:          #D6DED2;
@wooded:            #C3D9AD;
@agriculture:       #F2E8B6;

@building:          #D9CCBE;
@hospital:          rgb(229,198,195);
@school:            #FFF5CC;
@sports:            #B8E6B8;

@residential:       @land * 0.98;
@commercial:        @land * 0.97;
@industrial:        @land * 0.96;
@parking:           #EEE;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     darken(#E84752,5%);
@motorway_fill:     @motorway_line;
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #E84752;
@trunk_fill:        @trunk_line;
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #E84752;
@primary_fill:      @primary_line;
@primary_case:      @primary_line * 0.9;

@secondary_line:    lighten(#E84752,5%);
@secondary_fill:    @secondary_line;
@secondary_case:    @secondary_line * 0.9;

@standard_line:     lighten(#E84752,10%);
@standard_fill:     @standard_line;
@standard_case:     @land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   darken(#BACCCE,15%);
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #fff;
@rail_case:         @land;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@country_text:      #002;
@country_halo:      @place_halo;

@state_text:        #002;
@state_halo:        @place_halo;

@city_text:         #001;
@city_halo:         @place_halo;

@town_text:         #002;
@town_halo:         @place_halo;

@poi_text:          #002;

@road_text:         #002;
@road_halo:         fadeout(#fff,34%);

@other_text:        #002;
@other_halo:        @place_halo;

@locality_text:     #002;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #005;
@village_halo:      @place_halo;

/* ****************************************************************** */



