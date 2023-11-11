library(voronoiTreemap)

vor <- data.frame(h1 = 'World', 
                  h2 = c(
                         'Retirement', 'Retirement',
                         'Investments', 'Investments', 'Investments',
                         'Cash'
                      ),
                  h3 = c(
                         "401k", "ROTH",
                         "Stocks", "Crypto", "Bonds",
                         "Cash (HYS)"
                      ),
                  color = rep(c(
                                "pink",
                                "steelblue",
                                "#96f8A0"
                              ),
                              times = c(
                                        2,
                                        3,
                                        1
                                      )
                            ),
                  weight = c(
                              10000, 8000,
                              10000, 5000, 9999,
                              21100
                            ),
                  codes = c(
                            "401k", "ROTH",
                            "Stocks", "Crypto", "Bonds",
                            "Cash (HYS)"
                          )
                )

vt <- vt_input_from_df(vor)

vt_d3(
  vt_export_json(vt),
  color_border = "#FFF",
  size_border = "2px",
  color_circle = "#e5e5e5",
  size_circle = "8px",
#  label = FALSE
)
