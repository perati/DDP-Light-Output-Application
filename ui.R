shinyUI(navbarPage('Light output requirement calculation',
       tabPanel('Area Requirements',

       sidebarLayout(
              sidebarPanel(width=4,
                           helpText('Area Light Intensity requirement (Lux)'),
                           selectInput('E', label = NULL, 
                                       choices = list('Kitchen (350 lux)' = 350,
                                                      'Living Room (120 lux)' = 120,
                                                      'Bedroom (80 lux)' = 80,
                                                      'Study Room (300 lux)' = 300),width =200),
                     br(),      
                     helpText('Area Length (m)'),
                     numericInput('L', label = NULL,value = 0,width = 200),
                     helpText('Area Width (m)'),
                     numericInput('W', label = NULL,value = 0,width = 200),
                     helpText('Area Height (m)'),
                     numericInput('H', label = NULL,value = 0,width = 200),
                     helpText('Surface Height (m)'),
                     numericInput('S', label = NULL,value = 0,width = 200),
                     br(),
                     helpText('Wall Colour'),
                     selectInput('RW', label = NULL, 
                                 choices = list('Light' = 0.5, 'Intermediate' = 0.3,
                                                'Dark' = 0.1),width =200),
                     helpText('Ceiling Colour'),
                     selectInput('RC', label = NULL, 
                            choices = list('Light' = 0.5, 'Intermediate' = 0.3,
                                           'Dark' = 0.1),width =200)
                     ),
       mainPanel(width=4,
              #'Area Index:',textOutput('AI'),
              #'Light Utilisation Index:',textOutput('LUI'),
              h3('Light Source Output Requirement (lumens)'),h2(textOutput('L0')),
              helpText('This number indicates the light intensity required for the area. 
What is needed is to select a light source that mathes this number.
              Note that light sources such as bulbs and fluorescent lamps, 
              all have in the manufacturers characteristics the light output 
              they emmit (indicated on the package). So, an area requiring 
              10000 lumens of light intensity can be adequately lighten with 
              light sources with total light output (lux) of that amount. This can 
              be achieved by a single light source emitting 10000 lux or 2 emitting 5000.'
              )
       )
       )
       ),
       tabPanel('About',
                mainPanel(
                       includeMarkdown('about.md')
                )
                )
)
)

