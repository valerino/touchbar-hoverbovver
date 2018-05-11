import Cocoa

class HoverBovverCanvas: NSImageView {
    @objc var imageLoaded:Bool = false;
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
      
        // set dimensions
        self.frame = CGRect(x: 0, y: 0, width: 630, height: 30)

        if(!self.imageLoaded){
            // load image at first run
            let path = URL(fileURLWithPath: Bundle.main.path(forResource: "hover_bovver", ofType: "gif")!)
            self.image = NSImage(byReferencing: path)
            self.imageLoaded = true;
        }
        
        // set frame animation
        self.animates = true
    }
}
