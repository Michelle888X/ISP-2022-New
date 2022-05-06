import Igis
import Scenes
import Foundation

class Board: RenderableEntity {
    var board: Rectangle 
    var height = 50

    let minion : Image
    
    init(rect: Rect){
        guard let minionURL = URL(string:"https://lh3.googleusercontent.com/88F7Rb9P6LuwRSybaHEYZvnPuRcwwNF-g1bRCta4WaFHr9vkqlfO_PjJYkzjCJKanXmupFtAOjbFDe8s_P7bMwqyZBhPMaZt0b2aYg=w600")
        else {
        fatalError("Failed to create URL for whitehouse")
        }
        minion = Image(sourceURL:minionURL)
        
        board = Rectangle(rect:rect, fillMode:.fillAndStroke)  
        super.init(name: "Board")
    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        canvas.setup(minion)
    }
    
    override func render(canvas:Canvas) {
        let strokeStyle = StrokeStyle(color:Color(.black))
        let fillStyle = FillStyle(color:Color(.white))
        let lineWidth = LineWidth(width:2)
        canvas.render(strokeStyle, fillStyle, lineWidth, board)
        if minion.isReady {
            let sourceRect = Rect(topLeft:Point(x:00, y:00), size:Size(width:500, height:500))
            let destinationRect = Rect(topLeft:Point(x:100, y:200), size:Size(width:100, height:100))
            minion.renderMode = .sourceAndDestination(sourceRect:sourceRect, destinationRect:destinationRect)
            canvas.render(minion)
            
        }
    }

    func move(to point:Point) {
        board.rect.topLeft = point
    }

    func extend(height: Int) {
        board.rect.size.height -= height }


    

}
