library(shiny)
library(markdown)

#funAI<-function(l,w,h,s){
 #     ai <- round(( (2*l)+(8*w) ) / 10 * (h-s),2)
  #    }
#funLUI<-function(l,w,h,s,rw,rc){
 #      ai <- ( (2*l)+(8*w) ) / 10 * (h-s)
  #     lui <-round(((ai/3+1)/6.7)+(rw*rc*0.5),2)
   #    }
funL0<-function(l,w,h,s,rw,rc,e){
       ai <- ( (2*l)+(8*w) ) / 10 * (h-s)
       lui <-((ai/3+1)/6.7)+(rw*rc*0.5)
       L0<-round((w*l*e)/lui)
}

shinyServer(
       function(input,output) {
       
         #     output$AI <- renderText({
          #    funAI(input$L,input$W,input$H,input$S)
           #   })
       #output$LUI <- renderText({
        #      funLUI(input$L,input$W,input$H,input$S,
         #            as.numeric(input$RW),as.numeric(input$RC))
          #    })
       output$L0 <- renderText({
              funL0(input$L,input$W,input$H,input$S,
                     as.numeric(input$RW),as.numeric(input$RC),
                    as.numeric(input$E))
              })
       }
)