import Igis
import Scenes

class Score: RenderableEntity {
    

    init(rect:Rect) {
    var rectangle: Rectangle
    var scoreBoard: Rectangle
  //  init() {
    //    rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
//        let rectangle = Rect(topLeft:Point(x:100, y:50), size:Size(width:200, height:300))
  //      scoreBoard = Rectangle(rect:rectangle, fillMode:.fillAndStroke)       
     //   super.init()
  }
    
    override func render(canvas:Canvas) {
        let scoreBoardRect = Rect(topLeft:Point(x:100, y:50), size:Size(width:200, height:300))
        let scoreBoard = Rectangle(rect: scoreBoardRect, fillMode: .fillAndStroke)
        let strokeStyle = StrokeStyle(color:Color(.orange))
        let lineWidth = LineWidth(width:5)
        canvas.render(strokeStyle, lineWidth, scoreBoard)
    }
 
}
