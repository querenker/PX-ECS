as yet unclassified
drawOn: aCanvas

    super drawOn: aCanvas.
    drawBlock ifNotNil: [
        aCanvas
            translateBy: self bounds origin
            clippingTo: self bounds
            during: [:canvas | drawBlock value: canvas]]