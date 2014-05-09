/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels 
 */

/* Font sets are defined in palette.mss */

/* Mapnik does not yet support character-spacing adjustments for 
   labels placed along a line. We can fake this using the replace()
   function in the text-name parameter by replacing each character
   with itself followed by one or more spaces. */

/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

/* ---- 5 boro suburbs ------------------------------------------ */

#place[type='suburb'][zoom>=9][name='Manhattan']{
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
 text-fill:#45a2e8;
  text-size:20;
  text-halo-fill: #000;
  text-halo-radius:4;
  text-wrap-width: 30;
  
}
#place[type='suburb'][zoom>=9][name="Brooklyn"] {
   text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
 text-fill:#45a2e8;
  text-size:20;
  text-halo-fill: #000;
  text-halo-radius:4;
  text-wrap-width: 30;

}
#place[type='suburb'][zoom>=9][name="Queens"]{
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#45a2e8;
  text-size:20;
  text-halo-fill: #000;
  text-halo-radius:4;
  text-wrap-width: 30;

}
#place[type='suburb'][zoom>=9][name="Bronx"] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#45a2e8;
  text-size:20;
  text-halo-fill: #000;
  text-halo-radius:4;
  text-wrap-width: 30;

}
#place[type='suburb'][zoom>=9][name="Staten Island"]{
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#45a2e8;
  text-size:20;
  text-halo-fill: #000;
  text-halo-radius:4;
  text-wrap-width: 30;
}

/* neighborhoods */
#place::small[type='neighbourhood'][zoom>=13] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill: #e78a45;
  text-size:12;
  text-halo-fill: #000;
  text-halo-radius:2;
  text-wrap-width: 30;
  [zoom>=14] {
    text-size:12;
    text-character-spacing: 1;
    text-wrap-width: 40;
    text-line-spacing: 1;
  }
  [zoom>=15] {
    text-halo-radius: 2;
    text-size:12;
    text-transform: uppercase;
    text-character-spacing: 1;
    text-wrap-width: 60; 
    text-line-spacing: 1;
  }
  [zoom>=16] {
    text-size:12;
    text-character-spacing: 2;
    text-wrap-width: 120;
    text-line-spacing: 2;
  } 
  [zoom>=17] {
    text-size:13; 
    text-character-spacing: 3;
    text-wrap-width: 160;
    text-line-spacing: 4;
  }
  [zoom>=18] {
    text-size:14;
    text-character-spacing: 4;
    text-line-spacing: 6;
  }
}



// =====================================================================
// AREA LABELS
// =====================================================================

// REMOVED

/* ================================================================== */
/* WATERWAY LABELS
/* ================================================================== */

#waterway_label[type='river'][zoom>=13],
#waterway_label[type='canal'][zoom>=15],
#waterway_label[type='stream'][zoom>=17] {
  text-name: '[name]';
  text-face-name: @sans_italic;
  text-fill: #000;
  text-halo-fill: fadeout(lighten(@water,5%),25%);
  text-halo-radius: 1;
  text-placement: line;
  text-min-distance: 400;
  text-size: 10;
  [type='river'][zoom=14],
  [type='canal'][zoom=16],
  [type='stream'][zoom=18] {
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
  [type='river'][zoom=15],
  [type='canal'][zoom=17] {
    text-size: 11;
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
  [type='river'][zoom>=16],
  [type='canal'][zoom=18] {
    text-size: 14;
    text-name: "[name].replace('([\S\ ])','$1 ')";
    text-spacing: 300;
  }
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

// US Interstate shields
#us_shields_interstate {
  shield-name: "[shield_name]";
  shield-face-name: @sans_bold;
  shield-size: 12;
  shield-fill: #fff;
  shield-min-distance: 25;
  shield-min-padding: 5;
  shield-file: url(img/shield_fwy_us2.png); 
  
  [length=3] { shield-file: url(img/shield_fwy_us3.png); }
  [length=4] { shield-file: url(img/shield_fwy_us3.png); }
  [length=5] { shield-file: url(img/shield_fwy_us5.png); }
  
  [zoom=12] { shield-min-distance: 80; }
  [zoom=11] { shield-min-distance: 60; }
}

// US Highway Shields
#us_shields_highway {
  shield-name: "[shield_name]";
  shield-face-name: @sans_bold;
  shield-size: 12;
  shield-fill: #000;
  shield-min-distance: 25;
  shield-min-padding: 5;
  shield-file: url(img/shield_hwy_us3.svg); 
  
  [length=4] { shield-file: url(img/shield_hwy_us4.svg); }
  [length=5] { shield-file: url(img/shield_sr_us5.svg); }
  [length=6] { shield-file: url(img/shield_sr_us6.svg); }
  [length=7] { shield-file: url(img/shield_sr_us7.svg); }
  
  [zoom=12] { shield-min-distance: 80; }
  [zoom=11] { shield-min-distance: 60; }
}

#motorway_label[type='motorway'][zoom>9],
#motorway_label[type='trunk'][zoom>9] {
  text-name:"[name]";
  text-face-name:@sans_bold;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:13;
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:100; }
}

#mainroad_label[type='primary'][zoom>12],
#mainroad_label[type='secondary'][zoom>13],
#mainroad_label[type='tertiary'][zoom>13] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:12;
}

#minorroad_label[zoom>14] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-size:9;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
}

/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */

#motorway_label[oneway!=0][zoom>=16],
#mainroad_label[oneway!=0][zoom>=16],
#minorroad_label[oneway!=0][zoom>=16] {
  marker-placement:line;
  marker-max-error: 0.5;
  marker-spacing: 200;
  marker-file: url(img/icon/oneway.svg);
  [oneway=-1] { marker-file: url(img/icon/oneway-reverse.svg); }
  [zoom=16] { marker-transform: "scale(0.5)"; }
  [zoom=17] { marker-transform: "scale(0.75)"; }
}


/* ****************************************************************** */