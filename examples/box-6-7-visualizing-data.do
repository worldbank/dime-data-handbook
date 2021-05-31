/*******************************************************************************
*   Set plot options
*******************************************************************************/

  set scheme s2color

  global grlabsize      4
  global col_mixedcar   `" "18 148 144" "'
  global col_womencar   purple
  global col_aux_bold   gs6
  global col_aux_light  gs12
  global col_highlight  cranberry
  global col_box        gs15
  global plot_options   graphregion(color(white))   ///
                        bgcolor(white)              ///
                        ylab(, glcolor(${col_box})) ///
                        xlab(, noticks)
  global lab_womencar   Reserved space
  global lab_mixedcar   Public space
